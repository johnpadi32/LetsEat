//
//  RestaurantDetailTableViewController.swift
//  LetsEat
//
//  Created by John Padilla on 8/9/22.
//

import UIKit

class RestaurantDetailTableViewController: UITableViewController {
    
    //MARK: - Properties
    
    var selectedRestaurand: RestaurantItem?

    override func viewDidLoad() {
        super.viewDidLoad()

        dump(selectedRestaurand as Any)

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

}
