import UIKit

// create custom type

class Person {
    
    let name: String
    var age: Int
    let country: String
    
    // unlike struct has built in initializer, class have to initialize by hand
    init(name:String, age: Int, country:String) {
        self.name = name
        self.age = age
        self.country = country
    }
    
    func celebrateBirthday() {
        self.age += 1
        print("Happy Birthday!")
    }
}

// whatever you have in init(name: age: country:), you will have :
// var person1:Person = Person(name: <#T##String#>, age: <#T##Int#>, country: <#T##String#>)

var person1:Person = Person(name: "Isla", age: 20, country: "Cuba")
person1.name
person1.age += 1
person1.celebrateBirthday()


// ---- inheritance -----
// inherit from person
// 'Person' class becomes the supperclass
// 'YouTuber' becomes a subclass of 'Person'
class YouTuber: Person {
    
    let channelName: String
    var numberOfSubscribers: Int
    var numberOfViews: Int
    
    // a YouTuber must also have a name, age country
    init(channelName: String, numberOfSubscribers: Int, numberOfViews: Int, name: String, age: Int, country: String) {
        self.channelName = channelName
        self.numberOfSubscribers = numberOfSubscribers
        self.numberOfViews = numberOfViews
        // a YouTuber must also have a name, age country
        // Person is a super class of YouTuber, must run a super initilizer which initilize the super class
        super.init(name: name, age: age, country: country)
    }
    
    func gainNewSubscriber() {
        self.numberOfSubscribers += 1
        print("Yay! New subscriber for your channel \(self.channelName)")
    }
    // when we run celebrateBirthday on Youtuber do the following instead the standard one in Person
    override func celebrateBirthday() {
        // can do more and different
        self.age += 1
        print("Happy Birthday \(self.name), how about making a vlog of the day for your channel \(self.channelName)")
    }
}

//var YouTuber1: YouTuber = YouTuber(channelName: <#T##String#>, numberOfSubscribers: <#T##Int#>, numberOfViews: <#T##Int#>, name: <#T##String#>, age: <#T##Int#>, country: <#T##String#>)

var YouTuber1: YouTuber = YouTuber(channelName: "Isla's swift", numberOfSubscribers: 123345, numberOfViews: 3435123, name: "Isla", age: 29, country: "UK")
// Youtuber has all properties of Person, it inherit all these properties from Person
YouTuber1.channelName
YouTuber1.age
person1.celebrateBirthday()
YouTuber1.celebrateBirthday()
YouTuber1.gainNewSubscriber()
// Person has only its own properties, it don't have YouTuber's properties
// person1.channelName ?? don't exist


var peopleNearMe: [Person] = [person1, YouTuber1]  // won't cause any error

peopleNearMe[0].name








// -------------------------- Class VS. Struct --------------------


struct PointOnMapExample {
    var x: Int
    var y: Int
}

class PersonExample {
    let name: String
    var age: Int
    let country: String
    
    init(name: String, age: Int, country: String) {
        self.name = name
        self.age = age
        self.country = country
    }
}

// classes are references type
// structs are value type

var point1: PointOnMapExample = PointOnMapExample(x: 12, y: 6)
var point2: PointOnMapExample = point1   // MAKE a COPY! take whatever point1 is and set to point2

// if change point2's value, it won't affect point1 's value
point2.x = 100
point1.x

// if change point1's value, it won't affect point2's value
point1.x = 45
point2.x


var examplePerson1: Person = Person(name: "Sara", age: 19, country: "Cuba")
var examplePerson2: Person = examplePerson1   // only add 1 more pointer to the same data

// if change person2's value, person1's value changes too
examplePerson2.age = 45
examplePerson1.age

// if change person1'a value, person2's value changes too
examplePerson1.age = 100
examplePerson2.age


