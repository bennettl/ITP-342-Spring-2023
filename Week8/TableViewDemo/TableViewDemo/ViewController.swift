//
//  ViewController.swift
//  TableViewDemo
//
//  Created by Bennett Lee on 2/27/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

//    @IBOutlet weak var tableView: UITableView!

    var names = ["Sam", "Jenny", "Joe"]

    override func viewDidLoad() {
        super.viewDidLoad()
//        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }

    // How many sections to render?
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    // For a given section, how many cells to render?
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10000
//        return names.count
    }

    // For a given index path (e.g. section, row), what is the cell to return
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Recycling
        // Cells that are off screen are sent into a "reuse pool" (aka the recycling center), if they are eligble to be resued, then the tableview will reuse it, if not, the tableview will create a new UITableViewCell
        let cell = tableView.dequeueReusableCell(withIdentifier: "DefaultCell", for: indexPath)
        cell.textLabel?.text = "Row \(indexPath.row)"
//        cell.textLabel?.text = names[indexPath.row]
        return cell
    }


}

