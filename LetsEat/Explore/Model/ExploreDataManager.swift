//
//  ExploreDataManager.swift
//  LetsEat
//
//  Created by John Padilla on 7/22/22.
//

import Foundation

class ExploreDataManager {
    
    fileprivate var items: [ExploreItem] = []
    
    func fetch() {
        for data in loadData() {
            items.append(ExploreItem(dict: data))
        }
    }
    
    func numberOfItems() -> Int {
        items.count
    }
    
    func explore(at index:IndexPath) -> ExploreItem {
        items[index.item]
    }
    
    fileprivate func loadData() -> [[String:AnyObject]] {
        guard let path = Bundle.main.path(forResource: "ExploreData", ofType: "plist"), let items = NSArray(contentsOfFile: path) else {
            return [[:]]
        }
        return items as! [[String:AnyObject]]
    }
    

}
