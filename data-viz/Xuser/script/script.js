function placeBid(x) {
    let currentPlayerId = new URLSearchParams(window.location.search).get("id");
    
    if (!currentPlayerId) {
        alert("Player ID not found in the URL.");
        return;
    }

    if (!x) {
        alert("Team ID not found in the URL.");
        return;
    }

    const baseUrl = "Backend/placeBid.php";
    const url = `${baseUrl}?id=${currentPlayerId}&bid=${x}`;
    fetch(url)
        .then(response => response.json())
        .then(data => {
            if (data.error) {
                alert(data.error);
            } else {
                if (data.player_id) {
                    window.history.pushState({}, "", "?id=" + data.player_id);
                } else {
                    alert("Player ID is invalid or not present.");
                }
            }
        })
        
        // .catch(error => alert(error));
            
}