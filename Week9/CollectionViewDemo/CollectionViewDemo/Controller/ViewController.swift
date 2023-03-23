//
//  ViewController.swift
//  CollectionViewDemo
//
//  Created by Bennett Lee on 3/8/23.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource {

    // How many sections to display
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    // For a given section, how many items to display
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1000
    }

    // For a given index path (section, item), what is the cell to return
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MainCell", for: indexPath) as! LabelCell

        cell.mainLabel.text = "\(indexPath.item)"

        // Set our cell's background to a random color

        let red = Double(Int.random(in: 0...255)) / 255.0
        let green = Double(Int.random(in: 0...255)) / 255.0
        let blue = Double(Int.random(in: 0...255)) / 255.0

        let randomColor = UIColor(
            red: red,
            green: green,
            blue: blue,
            alpha: 1.0
        )

        cell.backgroundColor = randomColor

        return cell
    }





}

