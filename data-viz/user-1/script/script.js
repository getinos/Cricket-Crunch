// let currentPrice = 80; // Current price in lakhs
let text = document.getElementById('bid-button').textContent; // Current price in lakhs
let currentPrice = text.match(/\d+/g).join("");

let spentPrice = document.getElementById('total_amount');
let amountRemaining = 100000 - spentPrice.defaultValue; // Amount remaining in lakhs (₹10,000 Lakhs)

// let amountRemaining = 10000; // Amount remaining in lakhs (₹10,000 Lakhs)
let timeLeft = 5; // 90 seconds
let timerInterval;


// Sound Effect
const bidSound = document.getElementById('bid-sound');

// Update Display
function updateDisplay() {
  document.getElementById('current-price-value').textContent = `₹${currentPrice} L`;
  document.getElementById('amount-remaining-value').textContent = `₹${amountRemaining.toLocaleString()} L`; // Format with commas
  // updateBidButton();
}

// Update Bid Button Text
// function updateBidButton() {
//   const bidIncrement = currentPrice < 100 ? 25 : 75; // ₹25 L or ₹75 L
//   // document.getElementById('bid-button').textContent = `✨ Bid Now (+₹${bidIncrement} L)`;
//   const nextBidPrice = currentPrice + bidIncrement;

//   // **Disable button if the team can't afford the next bid**
//   const bidButton = document.getElementById('bid-button');
//   if (nextBidPrice > amountRemaining) {
//     bidButton.disabled = true;
   
//   } else {
//     bidButton.disabled = false;
    
//   }
// }
window.addEventListener("DOMContentLoaded", () => {
  // Check if the player was marked as sold
  var isSold = localStorage.getItem("playerSold");

  // Select the Bid button
  let bidButton = document.getElementById("bid-button"); 

  if (isSold) {
      console.log("Player was sold. Disabling the bid button.");

      // Disable the Bid button
      if (bidButton) {
          bidButton.disabled = true;
          bidButton.style.backgroundColor = "#ccc";  
          bidButton.style.cursor = "not-allowed";
      }
  }
});

window.addEventListener("DOMContentLoaded",() => {
  let resumeBid = localStorage.getItem("resumeBid");

  let bidButton = document.getElementById("bid-button");

  if(resumeBid) {
    console.log("resuming the bidding again.");

      if(bidButton) {
        bidButton.disabled = false;
          bidButton.style.backgroundColor = "#008000";  
          bidButton.style.cursor = "pointer";
      }
  }
})

// Update Timer
// function updateTimer() {
//   const minutes = Math.floor(timeLeft / 60);
//   const seconds = timeLeft % 60;
//   document.getElementById('timer').textContent = `${String(minutes).padStart(2, '0')}:${String(seconds).padStart(2, '0')}`;
//   document.getElementById('progress').style.width = `${(timeLeft / 90) * 100}%`;

//   // Get the 'id' from the current page's URL (if available)
//   const urlParams = new URLSearchParams(window.location.search);
//   const id = urlParams.get('id');  // Extract the 'id' parameter from the URL
//   const uid = urlParams.get('uid');

//   if (timeLeft === 0) {
//     clearInterval(timerInterval);
//     document.getElementById('bid-button').disabled = true;
//     alert('⏰ Bidding time is over!');
//     window.location.href = "./Backend/loading.php?uid=" + uid + "&id=" + id; 
//   } else {
//     timeLeft--;
//   }
// }

// Handle Bidding
function placeBid(a, b, c) {
 
      $.ajax({
        url: 'Backend/placeBid.php',
        type: 'POST',
        data: {
            team_id: a,
            amount: b,
            player_id: c
        },
        success: function(_response) {
            bid();
            // location.reload();
        },
        error: function(xhr) {
            console.error(xhr.responseText);
        }
    });
    handleBid(a, b, c)
          
}

function bid() {
  // Play sound
  let audio = new Audio('bid_sound.mp3');
  audio.play();

  confetti({
    particleCount: 100,
    spread: 70,
    origin: { y: 0.6 }
  });

//   setTimeout(() => {
//     location.reload();
// }, 1500);
}

// Start Timer
// timerInterval = setInterval(updateTimer, 1000);

// Ensure jQuery is included
if (typeof $ === 'undefined') {
    alert('jQuery is not loaded. Please include jQuery in your project.');
}

// Add Event Listener to Bid Button
document.getElementById('bid-button').addEventListener('click', placeBid);

// Initial Display Update
updateDisplay();

//function //PlayerAbsent(){
 // let bidButton = document.getElementById('bid-button');
 // bidButton.disabled = false;
 // bidButton.style.backgroundColor = '#008000';  
 // bidButton.style.cursor = 'pointer';

//}

// document.addEventListener("DOMContentLoaded", function () {
//   let urlParams = new URLSearchParams(window.location.search);
//   let currentId = urlParams.get("id") || 0; // Get player ID from URL

//   fetch("Backend/getPlayerStatus.php?id=" + currentId)
//       .then(response => response.json())
//       .then(data => {
//           let bidButton = document.getElementById("bid-button");

//           if (data.sold_resume == 2) {
//               bidButton.disabled = true; // Disable the button
//               bidButton.style.backgroundColor = "#ccc"; // Grey out the button
//               bidButton.style.cursor = "not-allowed";
//           }
//       })
//       .catch(error => console.error("Error fetching player status:", error));
// });

function handleBid(team, amount, playerId) {
    const bidButton = document.getElementById('bid-button');
    
    // Disable the button immediately
    bidButton.disabled = true;

    // Call your bid placement function
   

    // Re-enable the button after 3 seconds
    setTimeout(() => {
        bidButton.disabled = false;
    }, 6000);
}
