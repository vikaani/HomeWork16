//
//  MainFlowViewController.swift
//  HomeWork16
//
//  Created by Vika on 16.04.2024.
//

import UIKit

class MainFlowViewController: UIViewController {
    
    @IBOutlet var collectionView: UICollectionView!
    
    var onTapCell: ((Int) -> ())?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.register(MainFlowCell.self)
    }
}

// MARK: - UICollectionViewDataSource
extension MainFlowViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 200
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell: MainFlowCell = collectionView.dequeueReusableCell(indexPath: indexPath)
        
        cell.titleLabel.text = "\(indexPath.row)"
        return cell
    }
}

// MARK: - UICollectionViewDelegate
extension MainFlowViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        onTapCell?(indexPath.row + 1)
    }
}

// MARK: - UICollectionViewDelegateFlowLayout
extension MainFlowViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let cellWidth = collectionView.bounds.width / 3.0
        return CGSize(width: cellWidth, height: cellWidth)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        .zero
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        .zero
    }
}

