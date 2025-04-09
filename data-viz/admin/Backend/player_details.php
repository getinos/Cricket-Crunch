
<?php
    
    $currentId = isset($_GET['id']) ? intval($_GET['id']) : 0;
    
    // Fetch the current record
    $sql = "SELECT * FROM player_details WHERE player_id = :currentId";
    $stmt = $conn->prepare($sql);
    $stmt->bindParam(":currentId", $currentId, PDO::PARAM_INT);
    $stmt->execute();

    $record = $stmt->fetch(PDO::FETCH_ASSOC);

    $sql_2 = "SELECT * FROM bidding WHERE player_id = :currentId ORDER BY time DESC LIMIT 1";
    $stmt_2 = $conn->prepare($sql_2);
    $stmt_2->bindParam(":currentId", $currentId, PDO::PARAM_INT);
    $stmt_2->execute();
    $result = $stmt_2->fetch(PDO::FETCH_ASSOC);

    
    $team_name = "None";  

    if ($result) { 
        $teamId = $result["team_id"];

        $sql_3 = "SELECT team_name FROM team WHERE team_id = :teamId";
        $stmt_3 = $conn->prepare($sql_3);
        $stmt_3->bindParam(":teamId", $teamId, PDO::PARAM_INT);
        $stmt_3->execute();
        $team = $stmt_3->fetch(PDO::FETCH_ASSOC);

        if ($team) {
            $team_name = htmlspecialchars($team["team_name"]);
        }
    }

    if ($record ):
        // echo "<p>
        //     <strong>Name:</strong> 
        //     <span id='record-name'>";
        //         echo htmlspecialchars($record['player_name']);
        // echo "</span>
        //     </p>
        //     <p>
        //         <strong>Description:</strong>
        //         <span id='record-description'>";
        //             echo htmlspecialchars($record['player_specialism']);
        // echo "</span>
        // </p>
        
        // <button onclick='loadNextRecord()'>Next Record</button>";
        
        $img_path = "../images/Players/";
        $img = htmlspecialchars($record['player_img']);
        $name = htmlspecialchars($record['player_name']);
        $role = htmlspecialchars($record['player_specialism']);
        $price = htmlspecialchars($record['player_price']);
        $run4 = htmlspecialchars($record['player_4s']);
        $run6 = htmlspecialchars($record['player_6s']);
        $wkts = htmlspecialchars($record['player_wkts']);
        $matches = htmlspecialchars($record['player_ipl_mat']);
        $status = htmlspecialchars($record['player_status']);
        $catches = htmlspecialchars($record['player_catches']);
        $run_outs = htmlspecialchars($record['player_run_outs']);
        $stump = htmlspecialchars($record['player_stumpings']);
        $sold_status = htmlspecialchars($record['sold_resume']);

        $team_name = htmlspecialchars($team['team_name']);

        echo "<div class='player-image-container'>
                <img id='player-image' src='".$img_path.$img."' alt='Player'>
            </div>
            <div class='diagonal-bar'>
                <h2 id='player-name'> $name </h2>
            </div>
            
            <div class='player-info'>
                <p class='role' id='player-role'> $role </p>
                <p class='role' id='player-status'> $status </p>
                
                <div class='current-bidder' id='current-bidder'><strong>Bidder: $team_name </strong>  </div>
            </div>";
        
        echo "<div class='top stat-item'><span>Total Matches Played:</span> <span id='player-matches'> $matches </span></div>
        
            <div class='player-stats'>
                
                <div class='bat-stats'>
                  
                    <div class='stat-item'><span>Number of 4s:</span> <span id='player-4'> $run4 </span></div>
                    <div class='stat-item'><span>Number of 6s:</span> <span id='player-6'> $run6 </span></div>
                </div>

                <div class='bowl-stats'>
                  
                    <div class='stat-item'><span>Wickets:</span> <span id='player-wickets'> $wkts </span></div>
                    <div class='stat-item'><span>Stumping</span> <span id='player-wickets'> $stump </span></div>

                    <!--div class='current-bid' id='current-bid'> Current Bid: ₹ $price Lakh </div-->

                </div>

                <div class='field-stats'>
                   
                    <div class='stat-item'><span>Catches:</span> <span id='player-catches'> $catches </span></div>
                    <div class='stat-item'><span>Run Outs:</span> <span id='player-run-outs'> $run_outs </span></div>
                </div>
                                                                     
            </div>";
            
            echo "  
            <button class='next-bid-button' onclick='loadPrevRecord()'>prev Player <</button>";


            if ($sold_status == 0 || $sold_status === "") {
                echo "<button class='sold-player-button' onclick='markPlayerAsSold()' id='bid'>stop bid</button>";    
            }else{
                echo "<button class='resume-bid-button' onclick='resumeBid()' id='resume'>resume bid   </button>";
            }

            echo "  
                    <button class='next-bid-button' onclick='loadNextRecord()'>Next Player  ></button>
                    <button class='sold-player-button' onclick='restart_database()' id='bid'>start game</button>";

    else: "<p>No record found</p>"; 
    endif;
?>