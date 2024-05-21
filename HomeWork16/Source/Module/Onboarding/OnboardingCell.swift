//
//  OnboardingCell.swift
//  HomeWork16
//
//  Created by Vika on 16.04.2024.
//

import UIKit

class OnboardingCell: UICollectionViewCell {
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var stepperLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        contentView.backgroundColor = .random()
    }
}
