
import UIKit

var scores: [String: Int] = ["Matt": 10, "Jay": 17, "Emma": 15]

scores["Matt"]
scores["Joe"]  // return nil

scores.count

// update value
scores["Matt"] = 89
scores
scores.updateValue(100, forKey: "Matt")
scores
// add value
scores["Ikea"] = 33
scores.updateValue(19, forKey: "Ron")
scores
// remove values
scores.removeValue(forKey: "Ron")
scores






