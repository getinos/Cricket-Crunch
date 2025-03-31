<?php
include './../DB/config.php';

header("Content-Type: application/json");

$currentId = isset($_GET['id']) ? intval($_GET['id']) : 0;

$sql = "SELECT sold_resume FROM player_detail WHERE player_id = :currentId";
$stmt = $conn->prepare($sql);
$stmt->bindParam(":currentId", $currentId, PDO::PARAM_INT);
$stmt->execute();

$result = $stmt->fetch(PDO::FETCH_ASSOC);
$sold_status = htmlspecialchars($result['sold_resume']);

if ($sold_status == 0) {
    echo json_encode(["sold_resume" => $result['sold_resume']]);
} else {
    echo json_encode(["error" => "Player not found"]);
}



?>
