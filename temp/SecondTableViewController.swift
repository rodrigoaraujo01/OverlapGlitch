//
//  SecondTableViewController.swift
//  temp
//
//  Created by Rodrigo Araujo on 05/07/20.
//  Copyright © 2020 Brogrammers. All rights reserved.
//

import UIKit

class BasicCell: UITableViewCell {
    @IBOutlet weak var test: UILabel!
}

class SecondTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Padrão"
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 66
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! BasicCell
//        cell.test.text = "SECOND \(indexPath.row)"
        let cell = tableView.dequeueReusableCell(withIdentifier: "basicCell", for: indexPath)
        cell.textLabel?.text = "SECOND \(indexPath.row)"
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let secVC:SecondTableViewController = self.storyboard?.instantiateViewController(identifier: "SecondViewController") {
            self.navigationController?.pushViewController(secVC, animated: true)
        }
    }

}
