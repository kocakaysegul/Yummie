//
//  DishListTableViewCell.swift
//  Yummie
//
//  Created by Ayşegül Koçak on 5.05.2023.
//

import UIKit
import Kingfisher

class DishListTableViewCell: UITableViewCell {
    
    static let identifier = "DishListTableViewCell"

    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    
    func setup(dish : Dish){
        dishImageView.kf.setImage(with: dish.image?.asUrl)
        titleLbl.text = dish.name
        descriptionLbl.text = dish.description
    }
    
    func setup(order: Order) {
        dishImageView.kf.setImage(with: order.dish?.image?.asUrl)
        titleLbl.text = order.dish?.name
        descriptionLbl.text = order.name
    }
    
}

