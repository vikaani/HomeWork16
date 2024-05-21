//
//  MainFlowCell.swift
//  HomeWork16
//
//  Created by Vika on 17.04.2024.
//

import UIKit

class MainFlowCell: UICollectionViewCell {
    
    @IBOutlet var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        contentView.backgroundColor = .random()
    }
}

