//
//  ExploreViewController.swift
//  LetsEat
//
//  Created by John Padilla on 7/18/22.
//

import UIKit

class ExploreViewController: UIViewController, UICollectionViewDelegate {
    
    //MARK: - Properties
    
    let manager = ExploreDataManager()

    @IBOutlet weak var collectionView: UICollectionView!
    
    
    
    //MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialize()
    }

}

//MARK: - Private extension

private extension ExploreViewController {
    
    func initialize() {
        manager.fetch()
    }
    
    @IBAction func unwindLocationCancel(segue: UIStoryboardSegue) {
        
    }
}

//MARK: - UICollectionViewDataSource

extension ExploreViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return manager.numberOfItems()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "exploreCell", for: indexPath) as! ExploreCell
        let item = manager.explore(at: indexPath)
        cell.lblName.text = item.name
        cell.imgExplore.image = UIImage(named: item.image)
        
        return cell
    }
    
    //MARK: - collectionViewHeader
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "header", for: indexPath)
        return headerView
    }
    
}
