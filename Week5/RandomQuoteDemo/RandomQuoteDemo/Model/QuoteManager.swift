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

    let quotesFilePath: URL

    private init(){
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!

        quotesFilePath = URL(string:"\(documentsDirectory)/quotes.json")!

        load()
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
        save()
    }

    // Removing
    func remove(at index: Int) {
        quotes.remove(at: index)
        save()
    }

    // Update
    func update(quote: Quote, at index: Int) {
        quotes[index] = quote
        save()
    }


    // Write -> saving to disk
    func save() {
        // Codable API
        // 1. Data you want to save needs to conform to "Codable" Protocol
        // 2. Use a custom encoder to encode to file system

        let encoder = JSONEncoder()

        do {
            let data = try encoder.encode(quotes)
            let jsonString = String(data: data, encoding: .utf8)!

            try jsonString.write(to: quotesFilePath, atomically: true, encoding: .utf8)

        } catch {
            print(error)
        }

    }

    // Read -> reading from disk
    func load() {

        do {
            let decoder = JSONDecoder()
            let data = try Data(contentsOf: quotesFilePath)
            let decodedQuotes = try decoder.decode(Array<Quote>.self, from: data)

            quotes = decodedQuotes
        } catch {
            print(error)
        }

    }


}


