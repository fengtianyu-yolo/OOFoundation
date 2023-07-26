//
//  UIColor+OOFoundation.swift
//  OOFoundation
//
//  Created by 冯天宇 on 2023/7/26.
//

import UIKit

public extension UIColor {
        
    convenience init(hex: Int, alpha: CGFloat = 1.0) {
        let mask = 0x000000FF
        let r = Int(hex >> 16) & mask
        let g = Int(hex >> 8) & mask
        let b = Int(hex) & mask
        
        let red = CGFloat(r) / 255.0
        let green = CGFloat(g) / 255.0
        let blue = CGFloat(b) / 255.0
        
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
    
    convenience init(hex: String, alpha: CGFloat = 1.0) {
        let hexString = hex.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        let scanner = Scanner(string: hexString)
        if hexString.hasPrefix("#") {
            scanner.locale = 1
        }
        var color: UInt64 = 0
        scanner.scanHexInt64(&color)
        
        let mask = 0x000000FF
        let r = Int(color >> 16) & mask
        let g = Int(color >> 8) & mask
        let b = Int(color) & mask
        
        let red = CGFloat(r) / 255.0
        let green = CGFloat(g) / 255.0
        let blue = CGFloat(b) / 255.0
        
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
       
    convenience init(rgb: Int, alpha: CGFloat = 1) {
        let iBlue = rgb & 0xFF
        let iGreen = (rgb >> 8) & 0xFF
        let iRed = (rgb >> 16) & 0xFF
        self.init(red: CGFloat(iRed) / 255, green: CGFloat(iGreen) / 255, blue: CGFloat(iBlue) / 255, alpha: alpha)
    }
}

public extension UIColor {
    
    /// 生成随机颜色
    static var random: UIColor {
        UIColor(red: CGFloat.random(in: 0 ... 255.0) / 255.0, green: CGFloat.random(in: 0 ... 255.0) / 255.0, blue: CGFloat.random(in: 0 ... 255.0) / 255.0, alpha: 1)
    }
    
}
