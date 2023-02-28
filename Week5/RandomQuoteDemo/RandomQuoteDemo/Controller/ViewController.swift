//
//  ViewController.swift
//  RandomQuoteDemo
//
//  Created by Bennett Lee on 2/8/23.
//

import UIKit
import Photos

class ViewController: UIViewController, UITextFieldDelegate {


    @IBOutlet weak var messageLabel: UILabel!

    @IBOutlet weak var authorLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        let manager = QuoteManager.shared

        let quote = Quote(author: "Bennett", message: "Hey everyone")

        authorLabel.text = quote.author
        messageLabel.text = quote.message

        // Do any additional setup after loading the view.
    }


    @IBAction func generateDidTapped(_ sender: UIButton) {

        let quote = QuoteManager.shared.getRandomQuote()

        // You use force unwrapping "!" when you need a value to exist or else your app doesn't make sense to continue execution

        // Early stages of development, force unwrapping can help you reveals bugs in your code very quick. But you do not want to always force unwrap in production apps

        // You use optional chaining or conditional binding when it's ok that a value doesn't exist, you ignore execution and move on

        // Example of optional chaining
        authorLabel.text = quote?.author
        messageLabel.text = quote?.message
    }

}

