<?php
    include '../../DB/config.php';



// Get the current player ID from the URL
$currentId = isset($_GET['id']) ? intval($_GET['id']) : 0;

if ($currentId === 0) {
    echo json_encode(["error" => "Invalid player ID"]);
    exit;
}

// ✅ 1. Update `sold_resume` to 2 for the current player
$query = "UPDATE player_details SET sold_resume = 0 WHERE player_id = :currentId";
$s_stmt = $conn->prepare($query);
$updateSuccess = $s_stmt->execute([':currentId' => $currentId]);

if ($updateSuccess) {
    // ✅ 2. Fetch the updated `sold_resume` value
    $queryCheck = "SELECT sold_resume FROM player_details WHERE player_id = :currentId";
    $checkStmt = $conn->prepare($queryCheck);
    $checkStmt->execute([':currentId' => $currentId]);
    $result = $checkStmt->fetch(PDO::FETCH_ASSOC);

    if ($result) {
        echo json_encode([
            "success" => true,
            "player_id" => $currentId,
            "sold_resume" => $result['sold_resume'] // ✅ Send updated value
        ]);
    } else {
        echo json_encode(["error" => "Failed to fetch updated status"]);
    }
} else {
    echo json_encode(["error" => "Failed to update player"]);
}
?>

