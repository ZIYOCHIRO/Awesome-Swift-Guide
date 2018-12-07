import UIKit

func sayHello() {
    "Hello!"
}
sayHello()

// use only external name
func sayHelloToUser(name: String) {
    "Hello, \(name)"
}
sayHelloToUser(name: "Isla")

// use only internal name
func sayHelloToUser(_ name: String) {
    "Hello, \(name)"
}
sayHelloToUser("Isla")


// use both external and internal name
func sayHelloTo(user name: String) {
    "Hello, \(name)"
}
sayHelloTo(user: "Isla")

// have a return value in Int type
func convertKilometerToMeter(km: Double) -> Int {
    return Int(km * 1000)
}
let fiveKilometers = convertKilometerToMeter(km: 5.0)


// ---------- scope of functions ---------
func exampleFunction() {
    // variables declared inside the function can be only used inside the functions
    var myInt: Int = 10
    myInt += 1
}
// myInt -= 1 //Use of unresolved identifier 'myInt'

var myDouble = 5.6
func exampleFunction_1() {
    // variables declared outside the function can be used both inside and outside the functions
    myDouble += 1
}
myDouble += 1





