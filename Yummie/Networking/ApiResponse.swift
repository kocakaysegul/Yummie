//
//  ApiResponse.swift
//  Yummie
//
//  Created by Ayşegül Koçak on 26.05.2023.
//

import Foundation

struct ApiResponse<T: Decodable>: Decodable {
    let status: Int
    let message: String?
    let data: T?//t generic
    let error:String? 
}

