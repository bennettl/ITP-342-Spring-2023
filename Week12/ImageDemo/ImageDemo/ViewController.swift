//
//  ViewController.swift
//  ImageDemo
//
//  Created by Bennett Lee on 4/10/23.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    @IBOutlet weak var mainImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func selectPhotoDidTapped(_ sender: UIButton) {

        let imagePicker = UIImagePickerController()

        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            imagePicker.sourceType = .camera
        } else {
            imagePicker.sourceType = .photoLibrary
        }

        imagePicker.delegate = self
        present(imagePicker, animated: true)

    }

    func imagePickerController(_ picker: UIImagePickerController,
                               didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {

        let originalImage = info[.originalImage] as! UIImage
        mainImageView.image = originalImage

        picker.dismiss(animated: true)

    }


}

