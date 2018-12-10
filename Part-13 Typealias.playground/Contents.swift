import UIKit

typealias Integer = Int

let z: Integer = 42
let zz: Int = 42

// (Int) -> Int

typealias IntToInt = (Int) -> Int
typealias IntMaker = () -> Int

func makeCounter() -> IntMaker {
    var n = 0
    // functions within functions?
    // yes we can!!
    func adder() -> Int {  // both closure and function can capture variables before it
        n = n + 1
        return n
    }
    return adder // () -> Int  == IntMaker
}

let counter1 = makeCounter()
let counter2 = makeCounter()

counter1()
counter1()
counter1()

counter2() // 1 not 4
counter2() // 2






