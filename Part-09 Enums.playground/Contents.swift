import UIKit

// create custom types


//  bad way  :(  , easy to get a typo  Accidently "Newbio"???
var playerLevel: String = "Newbie"
switch playerLevel {
case "Newbie": "You are so new! Welcome!"
case "Believer": "Keep training. You need it"
case "Average": "You didn't come here to get average!"
case "Epic": "Damn, You're getting good!"
case "Megastar": "All eyes are on you!"
default: "Something has gone wrong!"
}

// good way :D  avoid typo!! :)

enum experienceLevel: String{
    case Newbie = "You are so new! Welcome!"
    case Believer = "Keep training. You need it"
    case Average = "You didn't come here to get average!"
    case Epic =  "Damn, You're getting good!"
    case Megastar = "All eyes are on you!"
}


var player1Level: experienceLevel = experienceLevel.Average
// don't need a default, because enum only has 5 choices
switch player1Level {
case experienceLevel.Newbie: "You are so new! Welcome!"
case experienceLevel.Believer: "Keep training. You need it"
case .Average: "You didn't come here to get average!"
case .Epic: "Damn, You're getting good!"
case .Megastar: "All eyes are on you!"
}

var player2Level = experienceLevel.Believer
player2Level.rawValue

"Welcome back! Your experience leverl is \(player2Level) - \(player2Level.rawValue)"










