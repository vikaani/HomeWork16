//
//  UIColor+extension.swift
//  HomeWork16
//
//  Created by Vika on 16.04.2024.
//

import UIKit

extension UIColor {
    static func random() -> UIColor {
        
        let red: CGFloat = CGFloat(Int.random(in: 0...255)) / 255
        let green: CGFloat = CGFloat(Int.random(in: 0...255)) / 255
        let blue: CGFloat = CGFloat(Int.random(in: 0...255)) / 255
        
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
}
