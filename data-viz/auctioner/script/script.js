
// let currentPlayerIndex = 0;
// let currentBidder = null;
// let bidHistory = [];

// function displayPlayer() {
//     let player = allPlayers[currentPlayerIndex];

//     let eligibleTeams = teams.filter(team => team.budget >= player.price);
//     currentBidder = eligibleTeams.length > 0 ? eligibleTeams[Math.floor(Math.random() * eligibleTeams.length)] : null;

//     document.getElementById('player-name').textContent = player.name;
//     document.getElementById('player-role').textContent = player.role;
//     // document.getElementById('current-bid').textContent = `Current Bid: ₹${player.price} Cr`;
//     document.getElementById('current-bidder').innerHTML = currentBidder ? `<strong>Bidder:</strong> ${currentBidder.name} 🏏` : `<strong>Bidder:</strong> None`;
//     document.getElementById('player-image').src = player.image;
    
//     // document.getElementById('sell-player-btn').disabled = false;
//     updateBidHistory();  // ✅ Refresh bid history display
// }

function sellPlayer() {
    if (!currentBidder) {
        alert("No team has placed a bid yet!");
        return;
    }

    let player = allPlayers[currentPlayerIndex];

    if (currentBidder.budget < player.price) {
        alert(`${currentBidder.name} does not have enough funds!`);
        return;
    }

    // Save bid in history
    bidHistory.push({ team: currentBidder.name, amount: player.price });

    // Assign the player
    currentBidder.players.push(player);
    currentBidder.points += player.price * 10;
    currentBidder.budget -= player.price;

    // createTeamCards();
    // updateLeaderboard();
    updateBidHistory();  // ✅ Update bidding history

    document.getElementById('sell-player-btn').disabled = true;
}

function updateBidHistory() {
    const historyContainer = document.getElementById('bidding-history');
    historyContainer.innerHTML = bidHistory.length === 0 
        ? "<p>No bids yet</p>" 
        : bidHistory.map(entry => `<div class="bid-entry">${entry.team} bid ₹${entry.amount} Cr</div>`).join('');
}


// document.getElementById('next-player-btn').addEventListener('click', nextPlayer);
// document.getElementById('sell-player-btn').addEventListener('click', sellPlayer);

// updateLeaderboard();
// createTeamCards();
// displayPlayer();

function loadNextRecord() {
    let currentId = parseInt(new URLSearchParams(window.location.search).get("id")) || 0;

    fetch("Backend/get_next_player.php?id=" + currentId)
        .then(response => response.json())
        .then(data => {
            if (data.error) {
                alert(data.error);
            } else {

                // Update content
                let path = "./../images/Players/";
                document.getElementById("player-image").src = path + data.player_img;

                document.getElementById("player-name").innerText = data.player_name;
                document.getElementById("player-role").innerText = data.player_specialism;
                // document.getElementById("current-bid").innerText = "Current Bid: ₹" + data.player_price + " Lakh";
                document.getElementById("player-4").innerText = data.player_4s;
                document.getElementById("player-6").innerText = data.player_6s;
                document.getElementById("player-wickets").innerText = data.player_wkts;
                document.getElementById("player-matches").innerText = data.player_ipl_mat;
                document.getElementById("player-status").innerText = data.player_status;
                document.getElementById("player-catches").innerText = data.player_catches;
                document.getElementById("player-run-outs").innerText = data.player_run_outs;
                // document.getElementById("player-stump").innerText = data.player_stumpings;

                // Update URL without reloading
                 window.history.pushState({}, "", "?id=" + data.player_id);

               // window.location.href = "?id=" + data.player_id;
                
            }
        })
        .catch(error => console.error("Error fetching next record:", error));
}

function loadPrevRecord() {
    let currentId = parseInt(new URLSearchParams(window.location.search).get("id")) || 0;
    
    fetch("Backend/get_prev_player.php?id=" + currentId)
        .then(response => response.json())
        .then(data => {
            if (data.error) {
                alert(data.error);
            } else {

                // Update content
                let path = "./../images/Players/";
                document.getElementById("player-image").src = path + data.player_img;

                document.getElementById("player-name").innerText = data.player_name;
                document.getElementById("player-role").innerText = data.player_specialism;
                // document.getElementById("current-bid").innerText = "Current Bid: ₹" + data.player_price + " Lakh";
                document.getElementById("player-4").innerText = data.player_4s;
                document.getElementById("player-6").innerText = data.player_6s;
                document.getElementById("player-wickets").innerText = data.player_wkts;
                document.getElementById("player-matches").innerText = data.player_ipl_mat;
                document.getElementById("player-status").innerText = data.player_status;
                document.getElementById("player-catches").innerText = data.player_catches;
                document.getElementById("player-run-outs").innerText = data.player_run_outs;
                // document.getElementById("player-stump").innerText = data.player_stumpings;

                // Update URL without reloading
                 //window.history.pushState({}, "", "?id=" + data.player_id);

                 window.history.pushState({}, "", "?id=" + currentId);
                
            }
        })
        .catch(error => console.error("Error fetching next record:", error));
}


//document.getElementById('resume').style.visibility = 'hidden';

// alert("Player marked as sold!");
function markPlayerAsSold() {
// localStorage.setItem("playerSold", "true");
            // document.getElementById('bid').style.visibility = 'hidden';
            // document.getElementById('resume').style.visibility = 'visible';
    let currentId = new URLSearchParams(window.location.search).get("id") || 0;

    fetch("Backend/closeBid.php?id=" + currentId)
        .then(response => response.json())
        .then(data => {
            if (data.error) {
                alert(data.error);
            } else {
               

                window.location.href = "?id=" + data.player_id;
                
            }
        })
  
        .catch(error => console.error("Error fetching next record:", error));
        }

        function resumeBid() {
            let currentId = new URLSearchParams(window.location.search).get("id") || 0;
            // let resumeButton = document.getElementById("resume-button");
        
            fetch("Backend/resumeBid.php?id=" + currentId)
                .then(response => response.json())
                .then(data => {
                    console.log("Response from closeBid.php:", data); // Debugging
                    if (data.sold_resume == 2) {
                        console.log("Player is sold. Disabling resume button."); // Debugging
                        if (resumeButton) {
                            resumeButton.disabled = true;
                            resumeButton.style.backgroundColor = "#ccc"; // Grey out the button
                            resumeButton.style.cursor = "not-allowed";
                        }
                    }
                })
                .catch(error => console.error("Error:", error));
        }
        
        
    

//window.addEventListener("DOMContentLoaded", () => {
 //   
 //   // Check if the player was marked as sold
  //  let isSold = localStorage.getItem("playerSold");
//
 //   // Select the Bid button
   // let bidButton = document.getElementById("bid-button"); 
//
//    if (isSold === "true") {
  //      console.log("Player was sold. Disabling the bid button.");
//
        // Disable the Bid button
 //       if (bidButton) {
 //           bidButton.disabled = true;
 //           bidButton.style.backgroundColor = "#ccc";  // Grey out the button
//            bidButton.style.cursor = "not-allowed";
//        }
//    }
//});


// setInterval(function() {

//     $("#bidding_cycle").load("Backend/bidding_history.php"); 

// }, 2000); // Reload every 2 seconds

//f//unction playerbutton() {
 //   let bidButton = document.getElementById("bid-button");
//    if (bidButton) {
//        bidButton.disabled = false;
//        bidButton.style.backgroundColor = "#008000";  
//        bidButton.style.cursor = "not-allowed"; 
   // }
//}
// Get the "id" parameter from the URL
