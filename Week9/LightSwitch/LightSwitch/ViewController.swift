//
//  ViewController.swift
//  LightSwitch
//
//  Created by Bennett Lee on 3/6/23.
//

import UIKit

// Our app is in iOS / Swift programming language

// When we talk to another service, likely they won't be in the same runtime / environemt as us (e.g. Java / Spring Boot, Typescript / NodeJS, Windows C#, etc.)

// How do we communicate between these services?

// We need to settle / agree on a standardize way to format our data
// Language agonstic

// Step 1: Conform to codable protocol
struct Quote: Codable {

    let message: String

    let author: String

    let age: Int
}

class ViewController: UIViewController {
    @IBOutlet weak var mainLabel: UILabel!

    @IBOutlet weak var mainSwitch: UISwitch!

    let IS_DARK_MODE = "isDarkMode"

    override func viewDidLoad() {
        super.viewDidLoad()

        let isDarkMode = UserDefaults.standard.bool(forKey: IS_DARK_MODE)

        updateUI(isDarkMode: isDarkMode)
        mainSwitch.isOn = isDarkMode

        // Goal Write a piece of data to the documents director

        // Step 1: Get the URL / path to documents directory
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!

        // /document-directory/my-file.txt
        let filePath = "\(documentsDirectory)/my-file.txt"

        let message = "This is a test"

        do {
            // lines of code before
            try message.write(to: URL(string: filePath)!, atomically: true, encoding: .ascii)
            // lines of code after
        } catch {
            print(error)
        }

        print(documentsDirectory)


        // Goal: Encode a swift Quote into a JSON object in the documents directory
        let quote = Quote(
            message: "Something wise...",
            author: "John Smith",
            age: 20
        )

        // Step 2: Use an encodedr to encode
        let encoder = JSONEncoder()

        do {
            // Convert Swift to JSON (data)
            let data = try encoder.encode(quote)

            // Convert JSON(data) into JSON(string)
            let jsonString = String(data: data, encoding: .utf8)!

            let quoteFilePath = "\(documentsDirectory)/my-file.json"

            try jsonString.write(to: URL(string: quoteFilePath)!, atomically: true, encoding: .utf8)

        } catch {
            print(error)
        }


    }

    @IBAction func switchValueDidChange(_ sender: UISwitch) {

        // Store the switch's state in user defaults
        // Create or overwrite
        UserDefaults.standard.set(sender.isOn, forKey: IS_DARK_MODE)

        updateUI(isDarkMode: sender.isOn)
    }

    func updateUI(isDarkMode: Bool) {
        if isDarkMode {
            view.backgroundColor = UIColor.black
            mainLabel.textColor = UIColor.white
        } else {
            view.backgroundColor = UIColor.white
            mainLabel.textColor = UIColor.black
        }
    }

}

