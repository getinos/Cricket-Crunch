
<?php
    
    $currentId = isset($_GET['id']) ? intval($_GET['id']) : 0;
    
    // Fetch the current record
    $sql = "SELECT * FROM player_details WHERE player_id = :currentId";
    $stmt = $conn->prepare($sql);
    $stmt->bindParam(":currentId", $currentId, PDO::PARAM_INT);
    $stmt->execute();

    $record = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($record):
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

        echo "<div class='player-image-container'>
                <img id='player-image' src='".$img_path.$img."' alt='Player'>
            </div>
            <div class='diagonal-bar'>
                <h2 id='player-name'> $name </h2>
            </div>
            
            <div class='player-info'>
                <p class='role' id='player-role'> $role </p>
                <p class='role' id='player-status'> $status </p>
                
                <div class='current-bidder' id='current-bidder'><strong>Bidder: </strong> None </div>
            </div>";
        
        echo "<div class='top stat-item'><span>Total Matches Played:</span> <span id='player-matches'> $matches </span></div>
        
            <div class='player-stats'>
                
                <div class='bat-stats'>
                    <h3>Batting Stats</h3>
                    <div class='stat-item'><span>Number of 4s:</span> <span id='player-4'> $run4 </span></div>
                    <div class='stat-item'><span>Number of 6s:</span> <span id='player-6'> $run6 </span></div>
                </div>

                <div class='bowl-stats'>
                    <h3>Bowling Stats</h3>
                    <div class='stat-item'><span>Wickets:</span> <span id='player-wickets'> $wkts </span></div>
                    <!--div class='current-bid' id='current-bid'> Current Bid: ₹ $price Lakh </div-->

                </div>

                <div class='field-stats'>
                    <h3>Fielding Stats</h3>
                    <div class='stat-item'><span>Catches:</span> <span id='player-catches'> $catches </span></div>
                    <div class='stat-item'><span>Run Outs:</span> <span id='player-run-outs'> $run_outs </span></div>
                </div>
                                                                     
            </div>";
            
            echo "<button class='next-bid-button' onclick='loadNextRecord()'>Next Player for Bid</button>";

    else: "<p>No record found</p>"; 
    endif;
?>