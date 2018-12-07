import UIKit

// ordered
var players: [String] = ["Matt", "Brad", "Isla", "Emma"]
players[0]
players[3]
let player1 = players.first
let player4 = players.last

players.count
if players.count >= 5 {
    "Game on!"
} else {
    "Need more players!"
    players.append("Ella")
}
// make Laura be the player 2
players.insert("Laura", at: 1)
// remove
players.remove(at: 2)
players.removeFirst()
players[0] = "Tom"
players

players.sort() //alphabet, numerical
players.contains("Ella")
players.contains("Reece")
