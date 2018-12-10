import UIKit

// assign to var or constant
let f = {(x: Int) -> Int in
    return x + 42
}
f(9)

// Closures in an array (or a dictionary, or a set, etc...)
let closures = [f,
                {(x:Int) -> Int in return x*2},
                {x in return x-8},
                {x in x*x},
                {$0 * 42}
]

for fn in closures {
    fn(42)
}

// closures VS. functions it's basically the same thing
let clo = {(x: Int) -> Int in
    return x + 42
}
clo(8)
func fun(x: Int) -> Int {
    return x + 42
}
fun(x: 8)

// create a few functions, add them to an array and call them
func curly(n: Int) -> Int {
    return n*n
}

func larry(x: Int) -> Int {
    return x * (x + 1)
}

func moe(m: Int) -> Int {
    return m * (m-1) * (m-2)
}
var stooges = [curly, larry, moe]
stooges.append(clo)  // array with 3 functions in it can also append closure because they are all (Int) -> Int)

for stoo in stooges {
    stoo(8)
}



