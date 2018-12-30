import UIKit

// classes are reference types:Google docs, if I give my friends access to my google sheet   and they changed it, it will mess up my original number
// structs are value types: I have a Microsoft xls file, and I send a copy to my friend, if the changed some value in that file, it doesn't matter to me because I send him a copy, I still have the origin value   --- >(passed around by copies)


class MacBook {
    var year: Int
    var color: String
    
    init(year: Int, color: String) {
        self.year = year
        self.color = color
    }
}

let myMacBook = MacBook(year: 2016, color: "Space Grey")
let stolenMacBook = myMacBook

stolenMacBook.color = "Spraypained Green"
print(stolenMacBook.color)  //"Spraypained Green\n"
print(myMacBook.color)       //"Spraypained Green\n"



struct iPhone {
    
    var number: Int
    var color: String
    
    
    // you even don't need init...!
    init(number: Int, color: String) {
        self.number = number
        self.color = color
    }
}

let myiPhone = iPhone(number: 8, color: "Black")
var stoleniPhone = myiPhone

stoleniPhone.color = "pink"
print(stoleniPhone.color)  // pink
print(myiPhone.color)      // black



//-------------- Question: when to use STruct/Class ?
// 1.when you want inherite all the properties that a class have
// Class customButton: UIButton {
// 2.when you don't need all the properties that a class have, because it might cost too much, use struct(light weight and clean)
