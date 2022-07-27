//
//  LocationViewController.swift
//  LetsEat
//
//  Created by John Padilla on 7/26/22.
//

import UIKit

class LocationViewController: UIViewController, UITableViewDataSource {

    //MARK: - Properties
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    //MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "locationCell", for: indexPath)
        cell.textLabel?.text = "A Cell"
        return cell
    }

}
