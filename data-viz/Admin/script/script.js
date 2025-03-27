let teams = [
    { name: "CSK", logo: "https://upload.wikimedia.org/wikipedia/en/2/2b/Chennai_Super_Kings_Logo.svg", players: [], budget: 100, points: 0 },
    { name: "MI", logo: "https://upload.wikimedia.org/wikipedia/en/c/cd/Mumbai_Indians_Logo.svg", players: [], budget: 100, points: 0 },
    { name: "RCB", logo: "https://upload.wikimedia.org/wikipedia/en/6/60/Royal_Challengers_Bangalore_Logo.svg", players: [], budget: 100, points: 0 },
    { name: "KKR", logo: "https://upload.wikimedia.org/wikipedia/en/a/a8/Kolkata_Knight_Riders_Logo.svg", players: [], budget: 100, points: 0 },
    { name: "DC", logo: "https://upload.wikimedia.org/wikipedia/en/2/2f/Delhi_Capitals.svg", players: [], budget: 100, points: 0 },
    { name: "SRH", logo: "https://upload.wikimedia.org/wikipedia/en/8/81/Sunrisers_Hyderabad.svg", players: [], budget: 100, points: 0 },
    { name: "RR", logo: "https://upload.wikimedia.org/wikipedia/en/6/60/Rajasthan_Royals_Logo.svg", players: [], budget: 100, points: 0 },
    { name: "GT", logo: "https://upload.wikimedia.org/wikipedia/en/d/d4/Gujarat_Titans_Logo.svg", players: [], budget: 100, points: 0 }
];

const allPlayers = [
    { name: "MS Dhoni", role: "Wicketkeeper", price: 9, image: "dhoni.jpg" },
    { name: "Virat Kohli", role: "Batsman", price: 8.5, image: "kohli.jpg" },
    { name: "Rohit Sharma", role: "Batsman", price: 9.5, image: "rohit.jpg" },
    { name: "Ravindra Jadeja", role: "All-rounder", price: 7, image: "jadeja.jpg" },
    { name: "Hardik Pandya", role: "All-rounder", price: 9, image: "hardik.jpg" },
    { name: "Jasprit Bumrah", role: "Bowler", price: 9.2, image: "bumrah.jpg" },
    { name: "David Warner", role: "Batsman", price: 8.2, image: "warner.jpg" },
    { name: "Ben Stokes", role: "All-rounder", price: 9.8, image: "stokes.jpg" },
    { name: "Sam Curran", role: "All-rounder", price: 9.1, image: "curran.jpg" },
    { name: "Andre Russell", role: "All-rounder", price: 9.3, image: "russell.jpg" }
];

let currentPlayerIndex = 0;
let currentBidder = null;
let bidHistory = [];

// function updateLeaderboard() {
//     const leaderboardList = document.getElementById('leaderboard-list');
//     leaderboardList.innerHTML = teams
//         .sort((a, b) => b.points - a.points)  
//         .map(team => `
//             <div class="team-rank">
//                 <span>${team.name}</span>
//                 <span>${team.points} pts</span>
//             </div>
//         `).join('');
// }

// function createTeamCards() {
//     const teamListContainer = document.getElementById('team-list-container');
//     teamListContainer.innerHTML = teams.map(team => `
//         <div class="team-card">
//             <div class="team-header">
//                 <img src="${team.logo}" alt="${team.name} Logo" class="team-logo">
//                 <h3 class="team-name">${team.name}</h3>
//                 <span class="team-budget">💰 ₹${team.budget} Cr</span>
//             </div>
//             <div class="players-scroll">
//                 ${team.players.length === 0 ? "<p>No players yet</p>" : team.players.map(player => `
//                     <div class="player-card">
//                         <img src="${player.image}" alt="${player.name}" class="player-img">
//                         <div>${player.name}</div>
//                         <div>${player.role}</div>
//                         <div>₹${player.price} Cr</div>
//                     </div>
//                 `).join('')}
//             </div>
//         </div>
//     `).join('');
// }

// function nextPlayer() {
//     if (currentPlayerIndex >= allPlayers.length - 1) {
//         alert("All players have been processed!");
//         return;
//     }
    
//     currentPlayerIndex++;
//     bidHistory = [];  // ✅ Reset bidding history for new player
//     displayPlayer();
//     updateBidHistory();  // ✅ Clear the history box
// }


function displayPlayer() {
    let player = allPlayers[currentPlayerIndex];

    let eligibleTeams = teams.filter(team => team.budget >= player.price);
    currentBidder = eligibleTeams.length > 0 ? eligibleTeams[Math.floor(Math.random() * eligibleTeams.length)] : null;

    document.getElementById('player-name').textContent = player.name;
    document.getElementById('player-role').textContent = player.role;
    // document.getElementById('current-bid').textContent = `Current Bid: ₹${player.price} Cr`;
    document.getElementById('current-bidder').innerHTML = currentBidder ? `<strong>Bidder:</strong> ${currentBidder.name} 🏏` : `<strong>Bidder:</strong> None`;
    document.getElementById('player-image').src = player.image;
    
    // document.getElementById('sell-player-btn').disabled = false;
    updateBidHistory();  // ✅ Refresh bid history display
}

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
    let currentId = new URLSearchParams(window.location.search).get("id") || 0;

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
                // window.history.pushState({}, "", "?id=" + data.player_id);

                window.location.href = "?id=" + data.player_id;
                
            }
        })
        .catch(error => console.error("Error fetching next record:", error));
}

setInterval(function() {

    $("#bidding_cycle").load("Backend/bidding_history.php"); 

}, 2000); // Reload every 2 seconds

    