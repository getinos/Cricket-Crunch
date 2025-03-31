
<?php
    include './../DB/config.php';
    
    $currentId = isset($_GET['id']) ? intval($_GET['id']) : 0;
    
    $sql = "SELECT bidding.*, team.team_name FROM bidding 
            JOIN team ON bidding.team_id = team.team_id
            WHERE bidding.player_id = :currentId ORDER BY time DESC LIMIT 8 OFFSET 1";
    $stmt = $conn->prepare($sql);
    $stmt->bindParam(":currentId", $currentId, PDO::PARAM_INT);
    $stmt->execute();

    $curr = $conn->prepare("SELECT bidding.*, team.team_name FROM bidding 
            JOIN team ON bidding.team_id = team.team_id
            WHERE bidding.player_id = :currentId ORDER BY time DESC LIMIT 1");
        $curr->bindParam(":currentId", $currentId, PDO::PARAM_INT);
        $curr->execute();
        $one = $curr->fetch();

    $result = $stmt->fetchAll();
    if (is_array($result)) {
        $count = count($result);
        $rank = 1;

        echo "<div id='bidding-history1' class='team-rank'>
                    <span>{$one['team_name']}</span>
                    <span>₹{$one['player_price']} L</span>
                </div>";

        foreach ($result as $row) {
            $brightness = ($count / $rank)/4; // Adjust brightness scale

            echo "<div id='bidding-history' class='team-rank' style='background-color: hsla(37, 69%, 61%, {$brightness});'>
                    <span>{$row['team_name']}</span>
                    <span>₹{$row['player_price']} L</span>
                </div>";
            $rank++;
        }
    } else {
        echo "<div class='team-rank'> No teams found. </div>";
    }

   
?>