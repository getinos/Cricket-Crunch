<?php
include './../DB/config.php';

$stmt = $conn->prepare("SELECT t1.team_id, t1.team_name, t1.team_logo,
                                SUM(t3.player_points) as total_points
                        FROM team as t1
                        JOIN winner as t2 ON t1.team_id = t2.team_id
                        JOIN player_details as t3 ON t2.player_id = t3.player_id
                        GROUP BY t1.team_id
                        ORDER BY total_points DESC
");
$stmt->execute();

$result = $stmt->fetchAll();
if (is_array($result)) {
    //$rank = 1;
    //$totalTeams = count($result);
    foreach ($result as $row) {
        // Calculate brightness based on rank (higher rank = darker)
        // $brightness = ($totalTeams / $rank)/4; // Adjust brightness scale

        // echo "<div class='team-rank' style='background-color: hsla(348.23deg, 100%, 50%, {$brightness});'>
        //         <span>{$row['team_name']}</span>
        //         <span>{$row['total_points']} pts</span>
        //       </div>";
        // $rank++;

        echo "<div class='team-card'>
                <img src='./../images/logo/".$row['team_logo']."' alt='Team Beta' class='team-image'>
                <span class='team-name'>{$row['team_name']}</span>
                <span class='score'>{$row['total_points']} pts</span>
            </div>";
    }
} else {
    echo "<div class='team-rank'> No teams found. </div>";
}
?>