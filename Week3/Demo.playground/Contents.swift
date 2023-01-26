import Foundation

//
//// Say whatever you want
//
///*
//
// Multiple
// lines
// of comments
//
// */
//
//print("hey")
//print("hey without new line", separator: "", terminator: "")
//
//// Character
//"A"
//"0"
//"💰"
//
//// String
//"wegoiwege"
//"123"
//"true"
//
//// Int
//10
//-1
//0
//
//// Double (default)
//10.2
//100.4
//
//// Float (will explain in a later part how to create float)
//10.244
//1.244
//
//// Bool
//true
//false
//
//// Variables / Constants
//
//let name: String = "Bennett"
//
////var myFavoriteNumber: Int = 42
////myFavoriteNumber = 30
//
//// Type Inference
//var myFavoriteNumber = 42.0
//
//let x = 5
//let y = 5.0
//
//
//// String Interpolation
//print("Bennett's favorite number is \(myFavoriteNumber) ")
//
//
//// Operators
//
//// Arithmetic -> + * / -
//
//// Relational -> > < >= <= == !=
//    // -> Output -> Boolean
//
//
//// Logical Operators OR (||) AND (&&) NOT (!)
//// OR -> if one condition is true, the entire expression evalutes to true
//// AND -> every expression needs to be true for the entire expression to be true
//// NOT -> inverse boolean value
//
//
//// Control Flow
//
//// Conditionally execute a piece of logic (if state)
//
//let age = 30
//let isCool = false
//
//if age > 25 {
//    print("You are old")
//} else if age > 12 {
//    print("You are greater than 12")
//} else {
//    print("You are still relevant")
//}
//
//// Switch statement
//
//let color = "red"
//
////if color == "blue" {
////
////} else if color == "red" {
////
////} else if color == "purple"{
////
////}
//
//switch color {
//    case "blue":
//        print("the color is blue")
//    case "red", "burgandy", "maroon", "crimson":
//        print("the color is red")
//    case "purple":
//        print("the color is purple")
//    default:
//        print("no colors matches")
//}
//
//// 10 > 1 && 10 <= 10
//
//switch 10 {
//case 1...10:
//    print("first")
//case 10...20:
//    print("second")
//default:
//    ()
//}
//
//
//
//// Execute a piece logic multiple times (loops)
//
//// for -> iterating through a fixed set of items (e.g. array, range)
//
//let names = ["John", "Sarah", "Oliver"]
//
//// Iterating through an array by elements
//for name in names {
//    print(name)
//}
//
//// Iterating through an array by elements WITH index
//for (index, element) in names.enumerated() {
//    print("\(index + 1). \(element)")
//}
//
//
////for number in 1...10 {
////    print(number)
////}
//
//for number in 1..<10 {
//    print(number)
//}
////
////// while -> keep executing until a condition is FALSE
////
//var number = 0
//
//while number < 10 {
//    print("the number in the while loop is \(number)")
//    number += 1
//}

//

// Functions


// DRY: Don't Repeat Yourself!!

// Definition
//func greeting() -> Void {
//    let firstName = "Bennett"
//    let lastName = "Lee"
//    print("Welcome \(firstName) \(lastName)")
//}
//
//// Invocation / Execution stage
//greeting()
//greeting()
//greeting()
//greeting()
//greeting()

// Defining Inputs

//func greeting(firstName: String, lastName: String) -> Void {
//    print("\(firstName) \(lastName)")
//}


//greeting(firstName: "Bennett", lastName: "Lee")

// Omitting Argument Labels
func greeting(_ firstName: String, _ lastName: String) -> Void {
    print("\(firstName) \(lastName)")
}

greeting("Bennett", "Lee")

//
func divide(numerator: Double, denominator: Double) {
    print("divide - \(numerator / denominator)")
}
//divide(numerator: 10.0, denominator: 20.0)

// Defining a function with a custom argument label
//func divide(numerator: Double, with denominator: Double) {
//    print("divide - \(numerator / denominator)")
//}
//
//divide(numerator: 10.0, with: 20.0)

// Define a function with output

//func sum(x: Int, y: Int) -> Int {
//    return x + y
//}
//
//let result = sum(x: 10, y: 20)
//
//// Variadic parameters
//
//func sum(numbers: Int...) {
//    var sum = 0
//
//    for number in numbers{
//        sum += number
//    }
//
//    print("the sum is \(sum)")
//}
//
//sum(numbers: 1)
//sum(numbers: 1,2)
//sum(numbers: 2,1,0)
//
//
//print("the result is \(result)")
//
//
//// Status Code: Int
//// Status Message: String
//// 404 -> Not Found
//// Tuple
//func getHttpStatus() -> (Int, String){
//    return (200, "Ok")
//}
//
//let httpResult = getHttpStatus()
//httpResult.0
//httpResult.1
//
//// Swap two numbers
//func swap(x: inout Int, y: inout Int) {
//    let temp = y
//    y = x
//    x = temp
//}
//
//
//var x = 5
//var y = 10
//print("Before swap: x: \(x), y: \(y)")
//
//swap(x: &x, y: &y)
//print("After swap: x: \(x), y: \(y)")


//let singleLineQuote = " "
//
//print(singleLineQuote.isEmpty)
//
//let quotation = """
//  The White Rabbit put on his spectacles. "Where shall I begin, please your Majesty?" he asked.
//
//\n\n\n\n"Begin at the beginning," the King said gravely, "and go on till you come to the end; then stop."
//"""

//print(quotation)

//let name = "Bennett"
//name[name.startIndex]
//
//name[name.index(before: name.endIndex)]
//name[name.index(name.startIndex, offsetBy: 1)]
//
//for index in name.indices {
//    print("the character is \(name[index])")
//}
//
//name.uppercased()
//name.lowercased()
//print(name)


// Optionals were invited to solve the "The Billion Dollar Mistake" -> Null Pointer Exception

// Null -> nothing, access nothing, throw an exception

// How to solve?

// Variables / constants by default, cannot be null
// null -> nil

//let name: String = nil

// But sometimes, it makes sense to start with a nil value
// In those cases, you need to wrap your data in an optional data type
// Optional is a generic data type
var webpage: Optional<String> = nil

// Makign a call to the server for a webpage
webpage = "<html></html>"
webpage

print(webpage)

var favoriteNumber: Int! = nil
favoriteNumber = 42

// How to access the data inside of an optional?


//webpage = nil

// Force Unwrapping - if the optional is nil at the time of force unwrapping, your program crashes
// In early stages of development, force unwrapping is very effective to uncover and surface issues where you need the data to be present, or else your app doesn't make sense to continue execution
// In later of developments, you should probably take away the force unwraps
print(webpage!)


// Implicity Unwrapped Optional - using the exclaimation point when defining the optional, so that you do not need to explicity unwrap it every time you access the data

//print(favoriteNumber)
//print(favoriteNumber)
//print(favoriteNumber)
//print(favoriteNumber)
//print(favoriteNumber)


// Optional Binding - a safe way to access an optional's value

//webpage = nil
//if let webpageValue = webpage {
//    print(webpageValue)
//}
//
//if let webpage = webpage{
//    print(webpage)
//}
//
//if let webpage {
//    print(webpage)
//}
//
//// Optional Chaining
//
//var company: String? = nil
//let favoriteCompany = company ?? "Apple"
//
//print("My favorite company is \(favoriteCompany)")

/// CLASSES

// Is a blueprint for objects

// Class Definition:

// Properties - state / data

// Methods - behavior / actions

// Initializers - create an object with some custom data

class Dog {
    // Properties - state / data
    // Field Level Initialization
    var name: String = "Sam"

    // Methods - behavior / actions
    func greet() {
      print("My name is \(name)")
    }

    // Initializers - create an object with some custom data

    // Default initializer
    init() {
    }

    init(name: String) {
        self.name = name
    }

}

// Creating objects from classes - instantiation
var myFirstDog = Dog()
//myDog.name
//myDog.name = "Sarah"
//myDog.greet()

let myDog = Dog(name: "Kyle")
myDog.name = "Emily"
myDog.name



// Structure - properties, methods, initializers

struct Person {
    // Properties
    let name: String
    let age: Int

    // Method
    func greet() {
        print("name \(name) age \(age)")
    }
}


// Memberwise initializer
let sam = Person(name: "Sam", age: 23)
sam.name
sam.age








