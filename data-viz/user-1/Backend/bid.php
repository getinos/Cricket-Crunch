<?php 
require_once './../DB/config.php';
$currentUId = isset($_GET['uid']) ? intval($_GET['uid']) : 0;

$sql = "SELECT * FROM player_details WHERE player_id = :currentId";
$stmt = $conn->prepare($sql);
$stmt->bindParam(":currentId", $currentId, PDO::PARAM_INT);
$stmt->execute();

$record = $stmt->fetch(PDO::FETCH_ASSOC);


?>
