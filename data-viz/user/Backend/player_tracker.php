
<?php
    require_once './../DB/config.php';
    
    $currentUId = isset($_GET['uid']) ? intval($_GET['uid']) : 0;
    
    $sql = "SELECT player_details.*, winner.* FROM player_details 
            JOIN winner ON player_details.player_id = winner.player_id
            WHERE winner.team_id = :currentUId ORDER BY winner.player_price DESC";
    $stmt = $conn->prepare($sql);
    $stmt->bindParam(":currentUId", $currentUId, PDO::PARAM_INT);
    $stmt->execute();

    $result = $stmt->fetchAll();

    $rank = 11;
    $count = $rank - count($result);

    if (is_array($result)) {
        $img_path = "../images/Players/";
        foreach ($result as $row) {
            
            $img = $row['player_img'];
            echo "<div class='role'>
                    <img src='".$img_path.$img."' alt='Batsman'>
                    <p class='team-role'>{$row['player_name']}</p>
                </div>";
        }
    } else {
        echo "<div class='team-rank'> No teams found. </div>";
    }

    for($i = 0; $i < $count; $i++) {
        echo "<div class='role'>
                <img src='../images/unknown.png' alt='Batsman'>
                <p class='team-role'>--</p>
            </div>";
    }
?>