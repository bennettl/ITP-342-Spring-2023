//
//  ViewController.swift
//  MadLibs
//
//  Created by Bennett Lee on 2/1/23.
//

import UIKit

class ViewController: UIViewController {
    // Properties
    @IBOutlet weak var nameTextfield: UITextField!

    @IBOutlet weak var cityTextField: UITextField!

    @IBOutlet weak var verbTextField: UITextField!

    @IBOutlet weak var ageTextField: UITextField!

    @IBOutlet weak var animalSegmentedControl: UISegmentedControl!

    @IBOutlet weak var favoriteNumberSlider: UISlider!

    @IBOutlet weak var numberOfPetsStepper: UIStepper!

    @IBOutlet weak var happyEndingSwitch: UISwitch!

    @IBOutlet weak var favoriteNumberLabel: UILabel!

    @IBOutlet weak var numberOfPetsLabel: UILabel!

    @IBOutlet weak var containerView: UIView!

    @IBOutlet weak var lessOrMoreSegment: UISegmentedControl!

    // Methods


    override func viewDidLoad() {
        super.viewDidLoad()

        lessOrMoreSegment.selectedSegmentIndex = 1

        nameTextfield.becomeFirstResponder()
//        present(alert)
    }

    @IBAction func lessOrMoreDidTapped(_ sender: UISegmentedControl) {

        // If less is tapped, hide container view
        if sender.selectedSegmentIndex == 0 {
            containerView.isHidden = true
        // Else if more is tapped show container view
        } else if sender.selectedSegmentIndex == 1 {
            containerView.isHidden = false
        }

    }

    @IBAction func sliderDidChanged(_ sender: UISlider) {
        favoriteNumberLabel.text = "\(Int(sender.value))"
    }

    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }

    @IBAction func textFieldDidReturn(_ sender: UITextField) {
        sender.resignFirstResponder()
    }

    @IBAction func backgroundDidTapped(_ sender: UIButton) {
        nameTextfield.resignFirstResponder()
        cityTextField.resignFirstResponder()
        verbTextField.resignFirstResponder()
        ageTextField.resignFirstResponder()
    }

    @IBAction func createStoryDidTapped(_ sender: UIButton) {

        // Construct the story!
        // At the age of 21, Bob took a trip to Austin with 3 pets in order to sing with a moose. Bob decided to buy 42. Now they live happily ever after.

        let animal = animalSegmentedControl.titleForSegment(at: animalSegmentedControl.selectedSegmentIndex)!

        var story = "At the age of \(ageTextField.text!), \(nameTextfield.text!) took a trip to \(cityTextField.text!) with \(Int(numberOfPetsStepper.value)) pets in order to sing with a \(animal). Bob decided to buy \(Int(favoriteNumberSlider.value))."

        if happyEndingSwitch.isOn {
            story += " Now they live happily ever after."
        } else {
            story += " Things did not go too well =("
        }

        let alert = UIAlertController(
            title: "Our Story",
            message: story,
            preferredStyle: .alert
        )

        let okAction = UIAlertAction(
            title: "Ok",
            style: .default) { _ in
                print("ok was tapped")
            }


        let cancelAction = UIAlertAction(
            title: "Cancel",
            style: .destructive
        )

        alert.addAction(okAction)
        alert.addAction(cancelAction)

        present(alert, animated: true)

        print(story)



    }

}

