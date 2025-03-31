
<?php
    require_once './../DB/config.php';
    
    $currentId = isset($_GET['id']) ? intval($_GET['id']) : 0;
    
    $sql = "SELECT bidding.*, team.team_name FROM bidding 
            JOIN team ON bidding.team_id = team.team_id
            WHERE bidding.player_id = :currentId ORDER BY time DESC LIMIT 9";
    $stmt = $conn->prepare($sql);
    $stmt->bindParam(":currentId", $currentId, PDO::PARAM_INT);
    $stmt->execute();

    $result = $stmt->fetchAll();
    if (is_array($result)) {
        $count = count($result);
        $rank = 1;
        foreach ($result as $row) {
            $brightness = ($count / $rank)/4; // Adjust brightness scale

            echo "<div id='bidding-history' class='team-rank' style='background-color: hsla(220, 50%, 50%, {$brightness});'>
                    <span>{$row['team_name']}</span>
                    <span>₹{$row['player_price']} L</span>
                </div>";
            $rank++;
        }
    } else {
        echo "<div class='team-rank'> No teams found. </div>";
    }
?>