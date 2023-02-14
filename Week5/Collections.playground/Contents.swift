import Foundation



// Arrays

var names : Array<String> = ["John", "Sally", "Samantha"]

let favoriteNumbers : Array<Int> = [23, 10, 1]

// Shorthand typing
// let favoriteNumbers : [Int] = [23, 10, 1]

// Type Inference
let favoriteNumbers2 = [23, 10, 1]

// Access
names[1]

// Add
names.append("Kyle")
print(names)

names.insert("Jay", at: 2)
print(names)

// Remove
names.remove(at: 2)
print(names)

// Go through each element

for name in names {
    print(name)
}

// Array properties
names.count
names.isEmpty

// Dictionaries
// Key value pairs, every key in a dictionary is unqiue

var airports: Dictionary<String, String> = [
    "SFO" : "San Francisco",
    "LAX" : "Los Angeles",
    "JFK" : "New York"
]

// Access
airports["SFO"]


// Add
airports["HRSomething"] = "London Heathrow"
print(airports)

// Remove
airports["HRSomething"] = nil
print(airports)

// Go through each key value pair
for (code, fullName) in airports {
    print("\(code): \(fullName)")
}

// Sets


// Closures

//var names = ["Bennett", "John"]
//
//func incrementer() -> () -> Void {
//
//    var number = 0
//
//    return { () -> Void in
//        number += 1
//        print("the number is \(number)")
//    }
//}
//
//var incrementerOne = incrementer()
//incrementerOne()
//incrementerOne()
//incrementerOne()
//
//var incremnterTwo = incrementer()
//incremnterTwo()



