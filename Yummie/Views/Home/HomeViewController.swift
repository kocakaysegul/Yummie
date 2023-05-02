//
//  HomeViewController.swift
//  Yummie
//
//  Created by Ayşegül Koçak on 24.04.2023.
//

import UIKit

class HomeViewController: UIViewController {

    
    @IBOutlet weak var categoryCollectionview: UICollectionView!
    
    @IBOutlet weak var popularCollectionView: UICollectionView!
    
    var categories : [DishCategory] = [
        .init(id: "id1", name: "kjfgvkdj 1", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "kjfgvkdj 2", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "kjfgvkdj 3", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "kjfgvkdj 4", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "kjfgvkdj 5", image: "https://picsum.photos/100/200")
    ]
    
    var populars : [Dish] = [
        .init(id: "id1", name: "Garri", description: "This is the best that I ever tasted", image: "https://picsum.photos/100/200", calories: 32.765),
        .init(id: "id1", name: "Indomie", description: "This is the best that I ever tasted", image: "https://picsum.photos/100/200", calories: 123),
        .init(id: "id1", name: "Pizza", description: "This is the best that I ever tasted", image: "https://picsum.photos/100/200", calories: 345)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        categoryCollectionview.delegate = self
        categoryCollectionview.dataSource = self
        
        registerCell()
        
    }
    private func registerCell() {
        categoryCollectionview.register(UINib(nibName: CategoryCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
        popularCollectionView.register(UINib(nibName: DishPortraitCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: DishPortraitCollectionViewCell.identifier)
    }
    

 

}

extension HomeViewController : UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        switch collectionView {
        case categoryCollectionview :
            return categories.count
        case popularCollectionView :
            return populars.count
        default:
            return 0
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch collectionView {
        case categoryCollectionview :
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as! CategoryCollectionViewCell
            cell.setup(category: categories[indexPath.row])
            return cell
        case popularCollectionView :
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DishPortraitCollectionViewCell.identifier, for: indexPath) as! DishPortraitCollectionViewCell
            cell.setup(dish: populars[indexPath.row])
            return cell
        default:
            return UICollectionViewCell()
        }
        
        
    }
    
    
}
