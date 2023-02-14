//
//  ViewController.swift
//  Calculator
//
//  Created by Bennett Lee on 2/13/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberOneTextField: UITextField!

    @IBOutlet weak var numberTwoTextField: UITextField!

    @IBOutlet weak var numberLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func addDidTapped(_ sender: UIButton){
        let x = Int(numberOneTextField.text!)!
        let y = Int(numberTwoTextField.text!)!
        let result = Calculator.shared.sum(x: x, y: y)

        numberLabel.text = "\(result)"
    }

}

