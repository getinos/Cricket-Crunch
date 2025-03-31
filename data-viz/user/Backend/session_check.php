<?php
    include '../DB/config.php';

    session_start();  
    if(isset($_SESSION["team_id"]))  
    {  
        //echo '<h3>Login Success, Welcome - '.$_SESSION["username"].'</h3>';  
        // echo '<br /><br /><a href="./Backend/logout.php">Logout</a>';
        $p_query = "SELECT player_id FROM player_details WHERE status = 1 LIMIT 1";
        $p_stmt = $conn->prepare($p_query);
                                        
        $p_stmt->execute();
        $p_result = $p_stmt->fetchAll(PDO::FETCH_ASSOC);

        foreach ($p_result as $p_row) {
            $playerid = $p_row['player_id'];
        }

        header("location: ./index.php?uid=".$_SESSION["team_id"]."&id=".$playerid);
    }  
    else  
    {  
        header("location: ./Backend/login.php");  
    }
?>