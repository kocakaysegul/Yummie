//
//  Dish.swift
//  Yummie
//
//  Created by Ayşegül Koçak on 2.05.2023.
//

import Foundation

struct Dish{
    let id, name, description, image : String?
    let calories : Double?
    
    var formattedCalories : String {
        return String(format: "%2f", calories ?? 0)
    }
}
