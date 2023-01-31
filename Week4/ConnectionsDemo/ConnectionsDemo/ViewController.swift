//
//  ViewController.swift
//  ConnectionsDemo
//
//  Created by Bennett Lee on 1/30/23.
//

import UIKit

class ViewController: UIViewController {

    // Properties

    @IBOutlet weak var nameTextField: UITextField!

    @IBOutlet weak var outputLabel: UILabel!

    // Methods

    @IBAction func yesDidTapped(_ sender: UIButton) {
        print("I am tapped")

        // Fight On! name

        nameTextField.resignFirstResponder()
        outputLabel.text =  "Fight On! \(nameTextField.text!)"
    }

    // Licycle method -> run code when you screen is loaded
    override func viewDidLoad() {
        super.viewDidLoad()

        outputLabel.text = "I'm in view did load"

        // First Responder
        nameTextField.becomeFirstResponder()
    }


}

