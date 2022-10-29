//
//  UIColor_ext.swift
//  palette
//
//  Created by Hoonjoo Park on 2022/10/29.
//

import UIKit

extension UIColor {
    static func random() -> UIColor {
        let color = UIColor.init(red: CGFloat.random(in: 0...1),
                                 green: CGFloat.random(in: 0...1),
                                 blue: CGFloat.random(in: 0...1),
                                 alpha: 1)
        
        return color
    }
}
