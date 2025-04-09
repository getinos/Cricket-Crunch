<?php
    include '../../DB/config.php';

    try {
       
        $sql1 = "TRUNCATE TABLE winner;";
        $stmt1 = $conn->prepare($sql1);
        $stmt1->execute();

        $sql2 = "TRUNCATE TABLE bidding;";
        $stmt2 = $conn->prepare($sql2);
        $stmt2->execute();

        echo "Tables truncated successfully.";
    } catch (PDOException $e) {
        echo "Error: " . $e->getMessage();
    }
?>
