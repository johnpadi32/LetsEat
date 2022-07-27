//
//  LocationDataManager.swift
//  LetsEat
//
//  Created by John Padilla on 7/27/22.
//

import Foundation

class LocationDataManager {
    
    private var locations: [String] = []
    
    func fetch() {
        for location in loadData() {
            if let city = location["city"] as? String, let state = location["state"] as? String {
                locations.append("\(city), \(state)")
            }
        }
    }
    
    func numberOfItems() -> Int {
        locations.count
    }
    
    func locationItem(at index:IndexPath) -> String {
        locations[index.item]
    }
    
    private func loadData() -> [[String:AnyObject]] {
        guard let path = Bundle.main.path(forResource: "Locations", ofType: "plist"), let items = NSArray(contentsOfFile: path) else {
            return [[:]]
        }
        return items as! [[String:AnyObject]]
    }
}
