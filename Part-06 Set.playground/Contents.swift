import UIKit

// no order
var players: Set<String> = ["Matt", "Emma", "Isla", "Jay"]

players.insert("Reece")
players
players.removeFirst()

players.remove("Emma")

players.count

players.contains("Isla")

var set1: Set<Int> = [0, 1, 2, 3]
var set2: Set<Int> = [0, 2, 4, 6]

let unionSet: Set<Int> = set1.union(set2)
let intersectionSet: Set<Int> = set1.intersection(set2)
let subtractSet: Set<Int> = set1.subtracting(set2)
