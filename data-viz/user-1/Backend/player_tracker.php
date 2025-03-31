
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

    $bats = 0;
    $bowl = 0;
    $all = 0;
    $wicket = 0;

    if (is_array($result)) {
        $img_path = "../images/Players/";
        
        echo "
        <h3 class='title_team'>WICKETKEEPER</h3>
                <div class='result1'>";
        
        foreach ($result as $row) {            
            $img = $row['player_img'];

            if ($row['player_specialism'] == 'WICKETKEEPER') {
                    echo "<div class='role'>
                        <img src='".$img_path.$img."' alt='WICKETKEEPER'>
                        <p class='team-role'>{$row['player_name']}</p>
                    </div>";
                    $wicket++;
            }
        }
        for($i = 0; $i < 1-$wicket; $i++) {
            echo "<div class='role'>
                    <img src='../images/unknown.png' alt='WICKETKEEPER'>
                    <p class='team-role'>{$wicket}</p>
                </div>";
        }
        
        echo "</div>
                <br><h3 class='title_team'>BATSMAN</h3>
                <div class='result4'>";

        foreach ($result as $row) {            
            $img = $row['player_img'];

            if ($row['player_specialism'] == 'BATTER') {
                    echo "<div class='role'>
                        <img src='".$img_path.$img."' alt='Batsman'>
                        <p class='team-role'>{$row['player_name']}</p>
                    </div>";
                    $bats++;
            }
        }
        for($i = 0; $i < 4-$bats; $i++) {
            echo "<div class='role'>
                    <img src='../images/unknown.png' alt='Batsman'>
                    <p class='team-role'>{$bats}</p>
                </div>";
        }
        
        echo "</div>
                <br><h3 class='title_team'>ALL-ROUNDER</h3>
                <div class='result2'>";

        foreach ($result as $row) {            
            $img = $row['player_img'];

            if ($row['player_specialism'] == 'ALL-ROUNDER') {
                    echo "<div class='role'>
                        <img src='".$img_path.$img."' alt='ALL-ROUNDER'>
                        <p class='team-role'>{$row['player_name']}</p>
                    </div>";
                    $all++;
            }
        }
        for($i = 0; $i < 2-$all; $i++) {
            echo "<div class='role'>
                    <img src='../images/unknown.png' alt='ALL-ROUNDER'>
                    <p class='team-role'>{$all}</p>
                </div>";
        }

        echo "</div>
                <br><h3 class='title_team'>BOWLER</h3>
                <div class='result4'>";
        foreach ($result as $row) {            
            $img = $row['player_img'];

            if ($row['player_specialism'] == 'BOWLER') {
                    echo "<div class='role'>
                        <img src='".$img_path.$img."' alt='BOWLER'>
                        <p class='team-role'>{$row['player_name']}</p>
                    </div>";
                    $bowl++;
            }
        }
        for($i = 0; $i < 4-$bowl; $i++) {
            echo "<div class='role'>
                    <img class='unknown' src='../images/unknown.png' alt='BOWLER'>
                    <p class='team-role'>{$bowl}</p>
                </div>";
        }
        echo "</div>";
            
    }

?>