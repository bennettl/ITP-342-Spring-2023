//
//  QuotesViewController.swift
//  RandomQuoteDemo
//
//  Created by Bennett Lee on 2/27/23.
//

import UIKit



class QuotesViewController : UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!


    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        // This inefficient because we are refreshing the ENTIRE table view every time the user goes away and comes back to view controller
//        tableView.reloadData()
    }


    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return QuoteManager.shared.numberOfQuotes
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        // Creating and destroying objects is an expensive operation
//        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)

        let cell = tableView.dequeueReusableCell(withIdentifier: "DefaultCell")!

        let quote = QuoteManager.shared.get(at: indexPath.row)
        cell.textLabel?.text = quote?.message
        cell.detailTextLabel?.text = quote?.author
        return cell

    }

    @IBAction func editButtonDidTapped(_ sender: UIBarButtonItem) {

        // Edit mode
        if sender.title == "Edit" {
            sender.title = "Done"
            tableView.isEditing = true
        } else {
            sender.title = "Edit"
            tableView.isEditing = false
        }

    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {

        if editingStyle == .delete {
            // Note: Order is important

            // Remove the quote from the QuoteManager
            QuoteManager.shared.remove(at: indexPath.row)

            // Remove the cell from the tableview
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }


    // This method executes whenever a segue transition is about to occur
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        // 1
        if let vc = segue.destination as? NewQuoteViewController {
            vc.onComplete = {
                // 3
                self.tableView.reloadData()
            }
        }
    }
}
