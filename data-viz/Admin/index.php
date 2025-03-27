<?php
    // include './Backend/session_check.php';
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="refresh" content="2">
        <title>IPL Bidding Dashboard</title>
        <link rel="stylesheet" href="style/styles1.css">
    </head>
    <body>
        <div class="container">
            <!-- Left: Leaderboard -->
            <div class="upper">
            <div class="leaderboard" >
                <h2>🏆 Leaderboard</h2>
                <div id="leaderboard-list">
                    <?php include 'Backend/leaderboard.php'; ?>
                </div>
                <!--  -->
                </div>
        </div>

        <!-- Center: Current Player Panel -->
        <div class="current-player">
            
            <?php include 'Backend/player_details.php'; ?>

        </div>

        <!-- Right: Bidding History -->    
        <div class="lower">
            <div class="bidding-history-container" >  
                <div class="timer-container">                

                    <h2>📜 Bidding History</h2>  
        
                    <!-- <div class='stat-item'><span>TIME:</span> <span id='player-wickets'>90s</span></div> -->
                
                </div>
                <div id="bidding_cycle">
                    <?php include 'Backend/bidding_history.php'; ?>
                </div>

                    
            </div>
            
            <!--bidding-history-container end-->
        </div>

        <script src="script/script.js"></script>
    </body>
</html>