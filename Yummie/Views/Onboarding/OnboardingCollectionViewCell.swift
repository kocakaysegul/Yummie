//
//  OnboardingCollectionViewCell.swift
//  Yummie
//
//  Created by Ayşegül Koçak on 24.04.2023.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var slideImageView: UIImageView!
    @IBOutlet weak var slideTitleLbl: UILabel!
    @IBOutlet weak var slideDescriptionLbl: UILabel!
    
    static let identifier = String(describing: OnboardingCollectionViewCell.self)
    
    func setup(_ slide : OnboardingSlide) {
        slideImageView.image = slide.image
        slideTitleLbl.text = slide.title
        slideDescriptionLbl.text = slide.description
    }
    
    
    
}
