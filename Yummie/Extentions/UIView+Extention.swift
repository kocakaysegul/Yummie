//
//  UIView+Extention.swift
//  Yummie
//
//  Created by Ayşegül Koçak on 24.04.2023.
//

import Foundation
import UIKit

extension UIView {
    
    @IBInspectable var cornerRadius : CGFloat {
        get { return cornerRadius}
        set { self.layer.cornerRadius = newValue}
    }
}
