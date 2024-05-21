//
//  UICollectionView+extension.swift
//  HomeWork16
//
//  Created by Vika on 16.04.2024.
//

import UIKit

extension UICollectionView {
    func register<T: UICollectionReusableView>(_: T.Type) where  T: ReusingCell {
        let nib = T.nib
        register(nib, forCellWithReuseIdentifier: T.reuseIdentifier)
    }
    
    func dequeueReusableCell<T: UICollectionReusableView>(indexPath: IndexPath) -> T   where  T: ReusingCell {
        return dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier , for: indexPath) as! T
    }
}
