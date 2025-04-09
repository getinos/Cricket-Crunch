<?php
    include '../../DB/config.php';

    // ✅ 1.0 GET CURRENT PLAYER ID
    $currentId = isset($_GET['id']) ? intval($_GET['id']) : 0;

    // Setting status of current player to 0
    $s_query = "UPDATE player_details SET status= :id WHERE player_id = :currentId";
    $s_stmt = $conn->prepare($s_query);
    $s_stmt->execute([':id' => 0, ':currentId' => $currentId]);

    // Deleting record of current player from Winners table
    $d_sql = "DELETE FROM winner WHERE player_id = :currentId";
    $d_stmt = $conn->prepare($d_sql);
    $d_stmt->bindParam(':currentId', $currentId, PDO::PARAM_INT);
    $d_stmt->execute();
    
    // ✅ 2. SELECT Previous Record from player_details
    $newPlayerId = $currentId-1;
    $stmt = $conn->prepare("SELECT * FROM player_details where player_id = :playerId");
    $stmt->bindParam(":playerId", $newPlayerId, PDO::PARAM_INT);
    $stmt->execute();
    $row = $stmt->fetch(PDO::FETCH_ASSOC);

    $newId = $row['player_id'];

        // ✅ 2.1 UPDATE NEXT PLAYER STATUS TO 1
        $s_query = "UPDATE player_details SET status= :id WHERE player_id = :currentId";
        $s_stmt = $conn->prepare($s_query);
        $s_stmt->execute([':id' => 1, ':currentId' => $newId]);


    if ($row) {
        echo json_encode($row);
    } else {
        echo json_encode(["error" => "No more records"]);
    }

?>