//
//  HomeViewController.swift
//  Yummie
//
//  Created by Ayşegül Koçak on 24.04.2023.
//

import UIKit

class HomeViewController: UIViewController {

    
    @IBOutlet weak var categoryCollectionview: UICollectionView!
    
    var categories : [DishCategory] = [
        .init(id: "id1", name: "kjfgvkdj 1", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "kjfgvkdj 2", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "kjfgvkdj 3", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "kjfgvkdj 4", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "kjfgvkdj 5", image: "https://picsum.photos/100/200")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        categoryCollectionview.delegate = self
        categoryCollectionview.dataSource = self
        
        registerCell()
        
    }
    private func registerCell() {
        categoryCollectionview.register(UINib(nibName: CategoryCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
    }
    

 

}

extension HomeViewController : UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as! CategoryCollectionViewCell
        cell.setup(category: categories[indexPath.row])
        return cell
    }
    
    
}
