//
//  Route.swift
//  Yummie
//
//  Created by Ayşegül Koçak on 6.05.2023.
//

import Foundation

enum Route {
    
    static let baseUrl = "https://yummie.glitch.me"
    
    case temp
    
    //description: returns the path of the endpoint
    var description : String {
        switch self {
        case .temp: return  "/dish-categories"
        }
    }
}
