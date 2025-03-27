<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>IPL Bidding Dashboard</title>
        <link rel="stylesheet" href="style/style.css">
    </head>
    <body>
        <div class="container">
            <!-- Left: Leaderboard -->
            <div class="upper">
            <div class="leaderboard" >
                <h2>🏆 Leaderboard</h2>
                <div id="leaderboard-list">
                    <?php include 'Backend/bidder.php'; ?>
                </div>
                <!--  -->
                </div>
        </div>

        <!-- </div> container end-->
        <script src="script/script.js"></script>
    </body>
</html>