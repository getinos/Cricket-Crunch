<?php
    include '../../DB/config.php';

    if (isset($_POST['team_id'], $_POST['amount'], $_POST['player_id'])) {
        $team_id = $_POST['team_id'];
        $amount = $_POST['amount'];
        $player_id = $_POST['player_id'];

        // Insert data into the database
        $sql = "INSERT INTO bidding (player_id, team_id, player_price, time) VALUES (:player_id, :team_id, :amount, NOW())";
        $stmt = $conn->prepare($sql);
        $stmt->execute([
            ':team_id' => $team_id,
            ':player_id' => $player_id,
            ':amount' => $amount
        ]);

        echo "success";
    } else {
        echo "Missing required parameters.";
    }

?>