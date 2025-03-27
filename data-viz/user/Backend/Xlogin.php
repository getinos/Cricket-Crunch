<?php
    session_start();  
    include '../../DB/config.php';

    $message = "";  
    try  
    {  

        if(isset($_POST["login"]))  
        {  
            if(empty($_POST["username"]) || empty($_POST["password"]))  
            {  
                    $message = '<label>All fields are required</label>';  
            }  
            else  
            {  
                    $query = "SELECT * FROM team WHERE team_name = :username AND password = :password";  
                    $statement = $conn->prepare($query);  
                    $statement->execute(  
                        array(  
                            'username' => $_POST["username"],  
                            'password' => $_POST["password"]  
                        )  
                    );  
                    $count = $statement->rowCount();  
                    if($count > 0)  
                    {  
                        $_SESSION["username"] = $_POST["username"];  
                        header("location: ../index.php?uid=".$statement['team_id']."&id=");  
                    }  
                    else  
                    {  
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
        <title>Login</title>
        <style>
            body { font-family: Arial, sans-serif; }
            .container { width: 300px; margin: auto; padding: 20px; border: 1px solid #ccc; margin-top: 100px; }
            .error { color: red; }
        </style>
    </head>
    <body>
    <div class="container" style="width:500px;">  
                <?php  
                if(isset($message))  
                {  
                     echo '<label class="text-danger">'.$message.'</label>';  
                }  
                ?>  
                <h3 align="">PHP Login Script using PDO</h3><br />  
                <form method="post">  
                     <label>Username</label>  
                     <input type="text" name="username" class="form-control" />  
                     <br />  
                     <label>Password</label>  
                     <input type="password" name="password" class="form-control" />  
                     <br />  
                     <input type="submit" name="login" class="btn btn-info" value="Login" />  
                </form>  
           </div> 
    </body>
</html>
