import Foundation



// Closures

// Executable piece of code
// functions is a closure

// Named closure
func greet() {
    print("hello")
}

greet()


var names = ["Bob", "Amy", "Chris"]

// Sorting the names


func alphabetize(s1: String, s2: String) -> Bool {
    return s1 < s2
}

// Higher order function
names.sort(by: alphabetize)


// Create inline functions (closure expression)
names.sort(by: { (s1: String, s2: String) -> Bool in
    return s1 < s2
})

// Type inference
names.sort(by: { (s1, s2) in
    return s1 < s2
})

// Single line expressions
names.sort(by: { (s1, s2) in
    s1 < s2
})

// Shorthand argument names
names.sort(by: {
    $0 < $1
})

// Trailing closure syntax
// If closure is the last parameter of your function, you can omit the argument label and closing parenthesis
names.sort {
    $0 < $1
}


