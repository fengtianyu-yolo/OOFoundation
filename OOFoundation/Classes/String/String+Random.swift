//
//  String+Random.swift
//  OOFoundation
//
//  Created by 冯天宇 on 2023/7/26.
//

import Foundation

public extension String {
    
    /// 生成指定长度的随机字符串
    /// - Parameter length: 字符串长度
    /// - Returns: 生成结果
    static func randomString(length: Int) -> String {
        let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        let randomStr = (0..<length).map{ _ in letters.randomElement() ?? "a" }
        return String(randomStr)
    }
        
}
