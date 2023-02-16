//
//  ViewController.swift
//  GesturesAndAnimationDemo
//
//  Created by Bennett Lee on 2/15/23.
//

import UIKit


//protocol MyTextFieldDelegate {
//    func returnKeyTapped()
//
//}
//class MyTextField {
//
//    var delegate: MyTextFieldDelegate
//
//    //... when this event actually happens
//    delegate.returnKeyTapped()
//
//
//}


class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var blueView: UIView!

    func textFieldDidChangeSelection(_ textField: UITextField) {
        print("\(#function)")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Create gesture recognizer
        let singleTap = UITapGestureRecognizer(
            target: self,
            action: #selector(self.singleTapDidRecognized(tap:))
        )

        let doubleTap = UITapGestureRecognizer(
            target: self,
            action: #selector(self.doubleTapDidRecognized(tap:))
        )
        doubleTap.numberOfTapsRequired = 2

        singleTap.require(toFail: doubleTap)

//        let swipe = UISwipeGestureRecognizer()
//        swipe.direction = .up

        // Attach it to the view
        blueView.addGestureRecognizer(singleTap)
        blueView.addGestureRecognizer(doubleTap)
    }


//    func userDidSwipe(swipe: UISwipeGestureRecognizer) {
//    }

    @objc func singleTapDidRecognized(tap: UITapGestureRecognizer) {
        print("Single Tap")

        let originalColor = blueView.backgroundColor
        let originalFrame = blueView.frame

        let newFrame = CGRect(x: 0, y: 10, width: 50, height: 50)

        let animator = UIViewPropertyAnimator(
            duration: 3.0,
            curve: .easeInOut) {
                // Specify the end state UI for your views
                self.blueView.backgroundColor = UIColor.green

                // NOT SAFE for Autolayout!!!
                self.blueView.frame = newFrame

                // Better for Views with Autolayout constraints
                // self.blueView.transform


            }

        // Chaining animations
        animator.addCompletion { _ in
            print("The animation finished!!")

            let animationOnFinshed = UIViewPropertyAnimator(
                duration: 3.0,
                curve: .easeInOut
            ) {

                self.blueView.backgroundColor = originalColor
                self.blueView.frame = originalFrame
            }

            animationOnFinshed.startAnimation()
        }

        animator.startAnimation()

//        if blueView.backgroundColor == UIColor.green {
//            blueView.backgroundColor = UIColor.blue
//        } else {
//            blueView.backgroundColor = UIColor.green
//        }

    }

    @objc func doubleTapDidRecognized(tap: UITapGestureRecognizer) {
        print("Double Tap")

    }

    @IBAction func swipedDidRecognized(_ sender: UISwipeGestureRecognizer) {
        blueView.backgroundColor = UIColor.red
    }
}

