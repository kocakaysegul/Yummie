//
//  String+Extention.swift
//  Yummie
//
//  Created by Ayşegül Koçak on 25.04.2023.
//

import Foundation

extension String {
    var asUrl : URL? {
        return URL(string: self)
    }
}
