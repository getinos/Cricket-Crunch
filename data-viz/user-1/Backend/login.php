<?php
    session_start();  
    include '../../DB/config.php';

    $message = "";  
    try  
    {  
        $p_query = "SELECT player_id FROM player_details WHERE status = 1 LIMIT 1";
        $p_stmt = $conn->prepare($p_query);
                                        
        $p_stmt->execute();
        $p_result = $p_stmt->fetchAll(PDO::FETCH_ASSOC);

        foreach ($p_result as $p_row) {
            $playerid = $p_row['player_id'];
        }

        if(isset($_POST["login"]))  
        {  
            if(empty($_POST["username"]) || empty($_POST["password"]))  
            {  
                    $message = '<label>All fields are required</label>';  
            }  
            else  
            {  
                    $query = "SELECT team_id, team_name FROM team WHERE team_name = :username AND password = :password LIMIT 1";
                    $stmt = $conn->prepare($query);
                    $username = $_POST["username"];
                    $password = $_POST["password"];
                    
                    $stmt->bindParam(':username', $username);
                    $stmt->bindParam(':password', $password);

                    // $user = $stmt->fetch(PDO::FETCH_ASSOC);
                    $stmt->execute();
                    $result = $stmt->fetch(PDO::FETCH_ASSOC);

                    if(!empty($result)) {
                        $_SESSION["team_name"] = $result["team_name"];  
                        $_SESSION["team_id"] = $result['team_id'];
                        header("location: ../index.php?uid=".$result['team_id']."&id=".$playerid);
                    } else {  
                        $message = '<label>Wrong Data</label>';  
                    }  
                  
            }  
        }  
    }  
    catch(PDOException $error)  
    {  
        $message = $error->getMessage();  
    } 
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title> Data Viz </title>
        <link rel="stylesheet" href="../style/styles.css">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    </head>
    <body>
        <div class="login-container">
            <div class="login-form">
                <div class="cricket-icon">
                    <i class="fas fa-baseball-ball"></i> 
                </div>
                <h1>Welcome to <span>Cricket Crunch 2025</span></h1>
                <p>Use your provided ID and password to login.</p>
                <?php  
                    if(isset($message))  
                    {  
                        echo '<label class="text-danger">'.$message.'</label>';  
                    }  
                ?> 
                <form method="post">
                    <div class="input-group">
                        <label for="userid"><i class="fas fa-user"></i> User ID</label>
                        <input type="text" id="userid" name="username" placeholder="Enter your User ID" required>
                    </div>
                    <div class="input-group">
                        <label for="password"><i class="fas fa-lock"></i> Password</label>
                        <input type="password" id="password" name="password" placeholder="Enter your Password" required>
                    </div>
                    <button type="submit" name="login" class="login-button">Login</button>
                </form>
            </div>
        </div>
    </body>
</html>