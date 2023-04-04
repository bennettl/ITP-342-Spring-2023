//
//  ViewController.swift
//  FirebaseDemo
//
//  Created by Bennett Lee on 3/27/23.
//

import UIKit
import FirebaseFirestore
import FirebaseAuth

//struct User : Codable {
//    let firstName: String
//    let lastName: String
//}

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!

    @IBOutlet weak var passwordTextField: UITextField!

    let userCollectionRef = Firestore.firestore().collection("users")

    override func viewDidLoad() {
        super.viewDidLoad()

        // Synchronous
        print(Auth.auth().currentUser?.uid)

       

        // "/users/1"

        let userOneRef = userCollectionRef.document("Lmo0VYJRo7rp6RudEBj4")

        userOneRef.getDocument { (snapshot, error) in
            print(snapshot?.data())
        }

        // Create a document
        let documentId = userCollectionRef.document().documentID
        userCollectionRef.document(documentId).setData([
            "id": documentId,
            "firstName": "Sally"
        ])
        userCollectionRef.document(documentId).addSnapshotListener { snapshot, erro in
            print(snapshot?.data())
        }
//
//        userCollectionRef.document("3").delete()
//
//        userCollectionRef.addDocument(data: ["firstName": "Nicole"])
    }

    func longRunning() {

    }

    func updateImageView() {

    }

    func makeApiCall(onComplete: (String) -> Void) {

    }

    @IBAction func signUpDidTapped(_ sender: UIButton) {

        // By default, code will be execute in the MAIN thread
        let x = 5
        let y = 10
        let result = x + y


        // GOLDEN RULE #1, Any long running operation needs to be done in a background thread

        // Ways to do concurrency programming in iOS (multi-tasking)

        // 1. Grand Central Dispatch - functional / simple API
        DispatchQueue.main.async {

        }

        // 2. Operation Queues - object oriented approach to concurrency, more complex, but more feature rich
        // Cancel operations
        // Progress of operation
        // Priortize
        // Batch operations

        // 3. Structure Concurrency - async / await / actors



        // Very simple way to run units of work in a seperate thread
//        DispatchQueue.global().async {
//
//            // Long running operation that will take 10 seconds , saving a file to disk
//            longRunning()
//        }
//
//        // GOLDEN RULE #2: Any User Interface manipulation NEEDS to be done in the main thread
//        DispatchQueue.main.async {
//            updateImageView()
//        }
//
//
//        DispatchQueue.global().async {
//            // Network call to get API data
//            makeApiCall { data ->
//
//                // Go back to main thread to uidate UI
//                DispatchQueue.main.async {
//
//                }
//            }
//
//        }











        Auth.auth().currentUser?.delete()

        Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!) { authResult, error in

            if let userId = authResult?.user.uid {
                // Create the user profile in Firestore
                Firestore.firestore().collection("users").document(userId).setData([
                    "email": self.emailTextField.text
                ])
            }

            print("the created user has an id of \(authResult?.user.uid)")

            // You know the user is logged in
        }

    }

}

