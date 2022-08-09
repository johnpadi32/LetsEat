//
//  LocationViewController.swift
//  LetsEat
//
//  Created by John Padilla on 7/26/22.
//

import UIKit

class LocationViewController: UIViewController {

    //MARK: - Properties
    
    let manager = LocationDataManager()
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    //MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        initialize()
    }
}

//MARK: Extension

extension LocationViewController {
    
    //code goes here
    func initialize() {
        manager.fetch()
    }
}

extension LocationViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return manager.numberOfItems()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "locationCell", for: indexPath)
        cell.textLabel?.text = manager.locationItem(at: indexPath)
        return cell
    }
}
