//
//  UIColor+Ext.swift
//  TheRouter-ObjectiveCDemo
//
//  Created by Michael on 2024/4/8.
//

import UIKit

extension UIColor {
    @objc static func randomColor() -> UIColor {
        let randomColor = UIColor(red: CGFloat.random(in: 0...1),
                                green: CGFloat.random(in: 0...1),
                                blue: CGFloat.random(in: 0...1),
                                alpha: 1)
        return randomColor
    }

}
