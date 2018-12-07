import UIKit

// cannot asign firstName to nil because it's not optional, we make sure it has a value when we declared it
let firstName: String = "John"
let middleName: String? = "Whilliam" // set to nil for testing
let lastName: String = "Smith"

// if you are 100% sure the middleName got a value, you can use the ! to unwrap the optional
// else the code will crash
var fullName: String = "\(firstName) \(middleName!) \(lastName)"

if let existMiddleName = middleName {
    // existMiddleName is String type, not Optional String type !!!!
    fullName = "\(firstName) \(existMiddleName) \(lastName)"
} else {
    fullName = "\(firstName) \(lastName)"
}

if middleName != nil {
    fullName = "\(firstName) \(middleName!) \(lastName)"
} else {
    fullName = "\(firstName) \(lastName)"
}
