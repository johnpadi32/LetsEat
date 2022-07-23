//
//  ExploreItem.swift
//  LetsEat
//
//  Created by John Padilla on 7/22/22.
//

import Foundation

struct ExploreItem {
    var name: String
    var image: String
}

let myExploreItem = ExploreItem(name: "name", image: "image")


extension ExploreItem {
    init(dict:[String:AnyObject]) {
        self.name = dict["name"] as! String
        self.image = dict["image"] as! String
    }
}
