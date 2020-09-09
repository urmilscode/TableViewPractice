//
//  ListViewController.swift
//  TableViewPractice
//
//  Created by Urmil Shah on 9/8/20.
//  Copyright © 2020 Spark28 Apps. All rights reserved.
//

import UIKit

class ListViewController: UIViewController, UITableViewDataSource,  UITableViewDelegate {

    ///MARK - Outlets

    @IBOutlet weak var tableView: UITableView!
   

    ///MARK: - Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    ///TableView Datasource Methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "listcell", for: indexPath)
        let label = cell.viewWithTag(1000) as! UILabel
        if indexPath.row == 0 {
            label.text = "Watch the Dutch Leauge"
        } else if indexPath.row == 1 {
            label.text = "Watch Borussia Dortmund win the Bundesliga"
        } else if indexPath.row == 2 {
            label.text = "Watch La liga"
        } else if indexPath.row == 3 {
            label.text = "Listen to Bob Marley Songs"
        }
        return cell;
    }
    
    ///MARK: - Table View Delegate Methods
 func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    if let cell = tableView.cellForRow(at: indexPath) {
        if  cell.accessoryType == .none {
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
        }
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
