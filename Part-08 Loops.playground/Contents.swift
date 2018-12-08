import UIKit

// ------ for loop ----------------
for i in 1...10 {
    print(i)
}

var sum: Int = 0
for i in 1...100 {
    sum += i
}
print("The sum from 1 to 100 is \(sum)")

// array loop
var players: [String] = ["Matt", "Emma", "Jay", "Reece"]
for player in players {
    print(player)
}
// dictionary loop
var playerScores:[String: Int] = ["Matt": 10, "Emma": 100, "Isla": 23, "Reece": 45]
for playerName in playerScores.keys {
    print("The player is \(playerName)")
}
for score in playerScores.values {
    print("The score is \(score)")
}
for (player, score) in playerScores {
    print("\(player)'s score is \(score)")
}


// ------ while loop ---------------

var exampleNumber = 10
while exampleNumber > 0 {
    print("I am running, and example number is set to \(exampleNumber)")
    exampleNumber -= 1
}
// --------- repeat while ---------- run at least 1 time !!!!!
var anotherExampleNumber = 0
repeat{
    print("repeat while is running, and example number is set to \(anotherExampleNumber)")
    anotherExampleNumber -= 1
} while anotherExampleNumber > 0

