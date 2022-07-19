//
//  RestaurantListViewController.swift
//  LetsEat
//
//  Created by John Padilla on 7/19/22.
//

import UIKit

class RestaurantListViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    
    
    //MARK: - Propeties
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    //MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //MARK: - UICollectionViewDataSource
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "restaurantCell", for: indexPath)
        return cell
    }


}
