//
//  QuotesViewController.swift
//  RandomQuoteDemo
//
//  Created by Bennett Lee on 2/27/23.
//

import UIKit



class QuotesViewController : UIViewController, UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return QuoteManager.shared.numberOfQuotes
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        // Creating and destroying objects is an expensive operation
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        let quote = QuoteManager.shared.get(at: indexPath.row)
        cell.textLabel?.text = quote?.message
        cell.detailTextLabel?.text = quote?.author
        return cell

    }

}
