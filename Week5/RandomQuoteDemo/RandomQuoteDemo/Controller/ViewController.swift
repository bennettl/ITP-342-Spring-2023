//
//  ViewController.swift
//  RandomQuoteDemo
//
//  Created by Bennett Lee on 2/8/23.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    private let TAG_GRAY_TEXTFIELD = 0

    private let TAG_TEAL_TEXTFIELD = 1

    @IBOutlet weak var messageLabel: UILabel!

    @IBOutlet weak var authorLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        UIApplication.shared

        let manager = QuoteManager.shared

        let quote = Quote(author: "Bennett", message: "Hey everyone")

        authorLabel.text = quote.author
        messageLabel.text = quote.message

        // Do any additional setup after loading the view.
    }


    // Older -> dont need to implement
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return true
    }

    // Newer , much easier to use
    func textFieldDidChangeSelection(_ textField: UITextField) {
        if textField.tag == TAG_GRAY_TEXTFIELD {
            print("Gray \(textField.text)")
        } else if textField.tag == TAG_TEAL_TEXTFIELD {
            print("Teal \(textField.text)")
        }
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("\(#function)")
        return true
    }

}

