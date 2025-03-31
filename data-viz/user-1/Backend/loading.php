<?php
//session_start();  
//sleep(5); // Simulate a delay of 5seconds

//ini_set('max_execution_time', '0'); // for infinite time of execution 
include '../../DB/config.php';

// if(($_SESSION["team_id"] != $_GET['uid']) || ($_SESSION["team_id"] == "" && $_GET['uid'] == "" )) {
    
//     header("location: ./login.php");

// }

$currentUId = isset($_GET['uid']) ? intval($_GET['uid']) : 0;
$currentId = isset($_GET['id']) ? intval($_GET['id']) : 0;


?>

<!DOCTYPE html>
<html lang="en">
<head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title> Data Viz </title>
        <link rel="stylesheet" href="../style/styles.css">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    </head>
    <body>
        <div class="login-container">
            <div class="login-form">
                <div class="cricket-icon">
                    <i class="fas fa-baseball-ball"></i> 
                </div>
                <h1>Welcome to <span>Cricket Crunch 2025</span></h1>
                <p>Please Wait till the next player is loaded.</p>

                <?php
                    do {
                        $sql = "SELECT player_id FROM player_details WHERE status = 1 LIMIT 1";
                        $stmt = $conn->prepare($sql);
                        $stmt->execute();
                        $result = $stmt->fetch(PDO::FETCH_ASSOC);
                    
                        $fetchId = $result['player_id'];
                        sleep(2); // Simulate a delay of 2seconds
                    } while ($currentId == $fetchId);
                    
                    if($fetchId) {
                        header("location: ../index.php?uid=".$currentUId."&id=".$fetchId);
                    }
                ?>                    
                
            </div>
        </div>
    </body>
</html>
