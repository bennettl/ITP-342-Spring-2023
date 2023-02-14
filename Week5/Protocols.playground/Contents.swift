import Foundation


// Cocoa --> MacOS / iOS
// Cocoa Touch --> UIKit + Foundation

// Protocols -- Interface
// A set of methods that defines a contract for a class, structure, or enum to follow

protocol Greetable {
    func greet()

    // optional func sayBye()
}

// Conforming to protocol
struct Person : Greetable {
    func greet() {
        print("hello")
    }
}

class Dog : Greetable {
    func greet() {
        print("woof")
    }
}

// Polymorphism

var things : Array<Greetable> = [Dog(), Person()]
for thing in things {
    thing.greet()
}
