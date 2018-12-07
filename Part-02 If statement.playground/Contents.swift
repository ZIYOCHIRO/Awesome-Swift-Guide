import UIKit


var gameLives = 3
gameLives -= 1

if gameLives == 0 {
    "Game over!"
}

var score = 5
if score == 10 {
    "Winner"
}

if score != 10 {
    "Loser"
}

if score < 5 {
    "Ouch, that's a low score!"
}

if score > 7 {
    "Nice try!"
}

if score >= 9 {
     "Wow!"
}

if score > 4 && score < 7 {
    "Keep trying!"
}

if score == 100 || score == 0 {
    "Wow!, I really don't know what to say!"
}


// if-else
if score > 7 {
    "Great Score!"
} else {
    "Try again!"
}

// if - else if
if score > 0{
    "level 1"
} else if score > 20 {
    "level 2"
} else if score > 40 {
    "level 3"
} else {
    "you are amazing!"
}

// switch
var highScore = 7
switch highScore {
    
case 0: "Really? 0?"
case 1: "Ouch"
case 2: "That's awful!"
case 3: "That's bad"
case 4: "Hmm"
case 5: "Average"
case 6: "Getting there!"
case 7: "Yeah!"
case 8: "Woo!"
case 9: "Nailed it!"
case 10: "Champion!"
default: "Did you cheat?"
    
}








