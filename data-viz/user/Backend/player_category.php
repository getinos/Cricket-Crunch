
<?php
    require_once './../DB/config.php';
    
    $currentUId = isset($_GET['uid']) ? intval($_GET['uid']) : 0;
    
    $sql = "SELECT  player_details.player_specialism, 
                SUM(CASE WHEN player_details.player_status = 'Uncapped' THEN 1 ELSE 0 END) AS uncapped_count,
                COUNT(*) AS total_count
            FROM player_details 
            JOIN winner ON player_details.player_id = winner.player_id
            WHERE winner.team_id = :currentUId";
    $stmt = $conn->prepare($sql);
    $stmt->bindParam(":currentUId", $currentUId, PDO::PARAM_INT);
    $stmt->execute();

    $result = $stmt->fetchAll();

    $ba_count = 0;
    $un_count = 0;
    $bo_count = 0;
    $ar_count = 0;
    $wk_count = 0;

    foreach ($result as $row) {
         // $u_count += htmlspecialchars($row['uncapped_count']);

         if (htmlspecialchars($row['player_specialism']) == 'BATTER') {
            $ba_count += htmlspecialchars($row['total_count']);
        } else if (htmlspecialchars($row['player_specialism']) == 'BOWLER') {
            $bo_count += htmlspecialchars($row['total_count']);
        } else if (htmlspecialchars($row['player_specialism']) == 'ALL-ROUNDER') {
            $ar_count += htmlspecialchars($row['total_count']);
        } else if (htmlspecialchars($row['player_specialism']) == 'WICKETKEEPER') {
            $wk_count += htmlspecialchars($row['total_count']);
        } else if (htmlspecialchars($row['player_specialism']) == 'Uncapped') {
            $un_count += htmlspecialchars($row['total_count']);
        }else {
            //echo "No player found";
        }
    }
    

    // Batsmen
    // echo "<div class='player-category'>
    //     <p class='category-title'>Batsmen</p>";
    // if($ba_count > 0) {
    //     for($i = 0; $i <= 3-$ba_count; $i++) {
    //         echo "<div class='slot' style='background-color: #fff;'></div>";
    //     }
    //     for($j = 0; $j < 3-$ba_count; $j++) {
    //         echo "<div class='slot'></div>";
    //     }
       
    // } else {
    //     for($j = 0; $j < 3-$ba_count; $j++) {
    //         echo "<div class='slot'></div>";
    //     }
    // }
    // echo "</div>";

    // // Bowlers
    // echo "<div class='player-category'>
    //     <p class='category-title'>Bowlers</p>";
    // if($bo_count < 3) {
 
    //     for($i = 1; $i <= $bo_count; $i++) {
    //         echo "<div class='slot' style='background-color: #fff;'></div>";
    //     }
    //     for($j = 0; $j < 3-$bo_count; $j++) {
    //         echo "<div class='slot'></div>";
    //     }
        
    // } else {
    //     for($j = 0; $j < 3-$bo_count; $j++) {
    //         echo "<div class='slot'></div>";
    //     }

    // }
    // echo "</div>";
    
    // // All-Rounders
    // echo "<div class='player-category'>
    //     <p class='category-title'>All-Rounders</p>";
    // if($ar_count > 0) {
    //     for($i = 0; $i <= $ar_count; $i++) {
    //         echo "<div class='slot' style='background-color: #fff;'></div>";
    //     }
    //     for($j = 0; $j < 2-$ar_count; $j++) {
    //         echo "<div class='slot'></div>";
    //     }
    // } else {
    //     for($j = 0; $j < 2-$ar_count; $j++) {
    //         echo "<div class='slot'></div>";
    //     }
    // }
    // echo "</div>";

    // // Wicketkeeper
    // echo "<div class='player-category'>
    //     <p class='category-title'>Wicketkeeper</p>";
    // if($wk_count > 0) {
    //     for($i = 0; $i <= 1-$wk_count; $i++) {
    //         echo "<div class='slot' style='background-color: #fff;'></div>";
    //     }
    //     for($j = 0; $j < 1-$wk_count; $j++) {
    //         echo "<div class='slot'></div>";
    //     }
    // } else {
    //     for($j = 0; $j < 1-$wk_count; $j++) {
    //         echo "<div class='slot'></div>";
    //     }
    // }
    // echo "</div>";

    // // Overseas
    // echo "<div class='player-category'>
    //     <p class='category-title'>Overseas</p>";
    // if($un_count > 0) {
    //     for($i = 0; $i <= 4-$un_count; $i++) {
    //         echo "<div class='slot' style='background-color: #fff;'></div>";
    //     }
    //     for($j = 0; $j < 4-$un_count; $j++) {
    //         echo "<div class='slot'></div>";
    //     }
    // } else {
    //     for($j = 0; $j < 4-$un_count; $j++) {
    //         echo "<div class='slot'></div>";
    //     }
    // }
    // echo "</div>";

    // Uncapped
    // echo "<div class='player-category'>
    //     <p class='category-title'>Uncapped</p>";
    // if($un_count > 0) {
    //     for($i = 0; $i <= 2-$un_count; $i++) {
    //         echo "<div class='slot' style='background-color: #fff;'></div>";
    //     }
    //     for($j = 0; $j < 2-$un_count; $j++) {
    //         echo "<div class='slot'></div>";
    //     }
    // } else {
    //     for($j = 0; $j < 2-$un_count; $j++) {
    //         echo "<div class='slot'></div>";
    //     }
    // }
    // echo "</div>";

    
?>