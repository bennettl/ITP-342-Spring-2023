//
//  QuoteManager.swift
//  RandomQuoteDemo
//
//  Created by Bennett Lee on 2/8/23.
//

import Foundation

// Manage a list of quotes
class QuoteManager {

    static let shared = QuoteManager()

    private var quotes = [
        Quote(author: "Patrick Star", message: "Is mayo an instrument?"),
        Quote(author: "Tony Stark", message: "I am iron man"),
        Quote(author: "Michael Scott", message: "I'm not supertitous but I am a little stitious"),
        Quote(author: "Benjamin Franklin", message: "A penny saved is a penny earned"),
        Quote(author: "Me", message: "Good documentation is key")
    ]

    var numberOfQuotes: Int {
        quotes.count
    }

    private init(){

    }


    // Get

    func get(at index: Int) -> Quote? {
        // Check out for of bounds
        if index < 0 || index >= quotes.count {
            return nil
        }

        return quotes[index]
    }

    func getNumberOfQuotes() -> Int {
        return quotes.count
    }

    func getRandomQuote() -> Quote? {
        if quotes.isEmpty {
            return nil
        }

        let index = Int.random(in: 0..<quotes.count)
        return quotes[index]
    }


    // Add
    func add(quote: Quote) {
        quotes.append(quote)
    }

    // Removing
    func remove(at index: Int) {
        quotes.remove(at: index)
    }

    // Update
    func update(quote: Quote, at index: Int) {
        quotes[index] = quote
    }



}


