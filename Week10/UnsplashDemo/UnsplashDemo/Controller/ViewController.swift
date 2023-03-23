//
//  ViewController.swift
//  UnsplashDemo
//
//  Created by Bennett Lee on 3/22/23.
//

import UIKit
import Kingfisher

class ViewController: UIViewController {
    @IBOutlet weak var mainImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()


        // https://www.google.com/images

        let url = URL(string: "https://api.unsplash.com/photos/random")!
        var request = URLRequest(url: url)
        request.setValue("Client-ID G-cjynY5E4dHNvkovp2Arp1Y3yuQE4c-zP3950N9W9U", forHTTPHeaderField: "Authorization")


        // Synchronus vs Async programmaing

        print("1")
        print("2")
        print("3")

        // start spinner

        // Make a request to get the image
        URLSession.shared.dataTask(with: request, completionHandler: { (data, response, error) in
            print("The response has come back")
            print("4")
            //stop spinner

            // Data -> Image URL that we can use

            if let data = data {
                do {
                    let photos = try JSONDecoder().decode(Photo.self, from: data)
                    print(photos.urls.regular)
                    let photoUrl = URL(string: photos.urls.regular)

                    // Any User Interface operations must be performed on the the MAIN THREAD
                    DispatchQueue.main.async {
                        self.mainImageView.kf.setImage(with: photoUrl)
                    }

                } catch {
                    print(error)
                }
            }

        }).resume()

        // Going update the imageview with the image retrieved from unsplash

        print("5")


    }


}

