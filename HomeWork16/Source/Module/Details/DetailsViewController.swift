//
//  DetailsViewController.swift
//  HomeWork16
//
//  Created by Vika on 16.04.2024.
//

import UIKit

class DetailsViewController: UIViewController {
    @IBOutlet private var titleLabel: UILabel!
    
    private let number: Int
    
    init(number: Int) {
        self.number = number
        super.init(nibName: "DetailsViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Details"
        
        titleLabel.text = "Title \(number - 1)"
    }
}
