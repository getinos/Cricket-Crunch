<?php
    include '../../DB/config.php';

    // ✅ 1.0 GET CURRENT PLAYER ID
    $currentId = isset($_GET['id']) ? intval($_GET['id']) : 0;

    // ✅ 1.1 FIND MAXIMUM AMOUNT & OTHER DETAILS FROM bidding TABLE
    $f_query = "SELECT team_id, player_id, player_price FROM bidding WHERE player_id = :currentId ORDER BY player_price DESC LIMIT 1";
    $f_stmt = $conn->prepare($f_query);
    $f_stmt->execute([':currentId' => $currentId]);
    $max_record = $f_stmt->fetch();

    // ✅ 1.2 IF NO RECORD FOUND, SKIP INSERT & MOVE AHEAD
    if ($max_record['player_price']) {

        // ✅ 1.3 UPDATE winner TABLE ONLY IF A RECORD WAS FOUND
        $u_query = "INSERT INTO winner (player_id, team_id, player_price, win_updated) VALUES (:player_id, :team_id, :amount, NOW()) 
                    ON DUPLICATE KEY 
                    UPDATE team_id = VALUES(team_id), player_price = VALUES(player_price), win_updated = NOW()";
        $u_stmt = $conn->prepare($u_query);
        $u_stmt->execute([
            ':team_id' => $max_record['team_id'],
            ':player_id' => $max_record['player_id'],
            ':amount' => $max_record['player_price']
        ]);

        // ✅ 1.4 UPDATE RECORD FROM BIDDING TABLE
        $s_query = "UPDATE player_details SET status= :id WHERE player_id = :currentId";
        $s_stmt = $conn->prepare($s_query);
        $s_stmt->execute([':id' => 0, ':currentId' => $currentId]);
    }else{
        $s_query = "UPDATE player_details SET status= :id WHERE player_id = :currentId";
        $s_stmt = $conn->prepare($s_query);
        $s_stmt->execute([':id' => 0, ':currentId' => $currentId]);
    }

    // ✅ 2. SELECT Next Record from player_details
    $newPlayerId = $currentId+1;
    $stmt = $conn->prepare("SELECT * FROM player_details where player_id = :playerId ORDER BY player_id ASC Limit 1");
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