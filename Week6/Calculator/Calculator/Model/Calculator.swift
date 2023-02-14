//
//  Calculator.swift
//  Calculator
//
//  Created by Bennett Lee on 2/13/23.
//

import Foundation

class Calculator {

    // Singleton
    static let shared = Calculator()

    func sum(x: Int, y: Int) -> Int {
        let result = x + y
        return result
    }

    func subtract(x: Int, y: Int) -> Int {
        let result = x - y
        return result
    }
}
