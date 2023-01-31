import Foundation

// Classes and structures

// Blueprint for objects / instances to be created
// Instantiate
//
//// Properties - data
//// Methods - behavior
//// Initialize - create a custom object
//
//struct Person {
//    let name: String
//
//    func greeting(){
//        print("hey my name is \(name)")
//    }
//}
//
//
//// Memberwise initializer
//let bob = Person(name: "Bob")
//bob.name
//bob.greeting()
//
//let sarah = Person(name: "Sarah")
//sarah.greeting()
//
//
//class Computer {
//    let name: String
//
//    init(name: String){
//        self.name = name
//    }
//
//    deinit {
//        print("run this when its not in memory")
//    }
//}
//
//let mac = Computer(name: "Macbook Pro")
//mac.name
//
//struct Rectangle {
//    // Stored Properties - data
//    let width: Int
//    let height: Int
//
//    // Computed Properties - computed when accessed
//    var area: Int {
//        return width * height
//    }
//
////    func getArea() -> Int {
////        return width * height
////    }
//
//    // Methods - behaviors
//}
//
//let rect = Rectangle(width: 20, height: 10)
//rect.area
//
//
//class Counter {
//    var count = 0
//    func increment() {
//        count += 1
//}
//    func increment(amount: Int) {
//        count += amount
//}
//    func reset() {
//        count = 0
//    }
//
//}
//
//let counter = Counter()
//counter.increment(amount: 20)
//
//
//// Value vs reference types
//
//
//
//struct Resolution {
//    var width: Int
//    let height: Int
//}
//
//let hd = Resolution(width: 1920, height: 1080)
//hd.width
//
//var cinema = hd
//cinema.width = 200
//
//cinema.width
//
//
//class VideoMode {
//    var resolution: Resolution
//
//    var interlaced: Bool
//
//    var name: String
//
//    var frameRate: Double
//
//    init() {
//        resolution = Resolution(width: 0, height: 0)
//        interlaced = true
//        name = ""
//        frameRate = 0
//    }
//}
//
//let tenEighty = VideoMode()
//tenEighty.resolution = hd
//tenEighty.interlaced = true
//tenEighty.name = "1080i"
//tenEighty.frameRate = 25.0
//
//tenEighty.frameRate
//
//let alsoTenEighty = tenEighty
//alsoTenEighty.frameRate = 30.0
//
//tenEighty.frameRate
//
//func useVideoMode(videoMode: VideoMode){
////    videoMode.frameRate = 10
//}
//
////useVideoMode(videoMode: tenEighty)
//
//// Principle of least privelege
//
//// private - most restrictive
//// only accessible inside the class
//
//// fileprivate
//// accessbile within the same Swift source file
//
//// internal - default
//// accessbile within the module
//
//// open
//// accessible within AND outside the module
//
//// public
//// accessible within AND outside the module AND is allowed to be subclassed / overriden
//


class Student {

    // Type properties
    static var numberOfStudents = 0

    let name: String

    init(name: String) {
        self.name = name
        Student.numberOfStudents += 1
    }

    func greet() {
        print("my name is \(name)")
    }

}

let adam = Student(name: "Adam")
adam.name

let sarah = Student(name: "Sarah")


class USCStudent : Student {

    // Overide the paren't classes implementation
    override func greet(){
        super.greet()
        print("USC style my name is \(name)")
    }
}


let john = USCStudent(name: "John")
john.name
john.greet()
