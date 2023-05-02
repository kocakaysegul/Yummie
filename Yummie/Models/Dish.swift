//
//  Dish.swift
//  Yummie
//
//  Created by Ayşegül Koçak on 2.05.2023.
//

import Foundation

struct Dish{
    let id, name, description, image : String?
    let calories : Int?
    
    var formattedCalories : String {
        return "\(calories ?? 0) calories"
    }
}
