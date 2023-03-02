//
//  NewQuoteViewController.swift
//  RandomQuoteDemo
//
//  Created by Bennett Lee on 3/1/23.
//

import UIKit

class NewQuoteViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var authorTextField: UITextField!

    @IBOutlet weak var quoteTextField: UITextField!

    @IBOutlet weak var saveButton: UIButton!

    var onComplete: (() -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()
        saveButton.isEnabled = false

        authorTextField.becomeFirstResponder()
    }

    @IBAction func saveDidTapped(_ sender: UIButton) {
        // Create a quote
        let newQuote = Quote(
            author: authorTextField.text!,
            message: quoteTextField.text!
        )

        QuoteManager.shared.add(quote: newQuote)

        // 2
        onComplete?()

        // If your view controller is being presented via a "Show" segue by a navigation controller
        navigationController?.popViewController(animated: true)
    }

    func textFieldDidChangeSelection(_ textField: UITextField) {
        // If the tag is 100, then it's the author text field
//        if textField.tag == 100 {
            enableOrDisableButton()
//        }
    }

    func enableOrDisableButton() {
        let isAuthorEmpty = authorTextField.text!.isEmpty
        let isQuoteEmpty = quoteTextField.text!.isEmpty

        // Enable or disable the "Save" button base on the inputs
        saveButton.isEnabled = !isAuthorEmpty && !isQuoteEmpty
    }
}
