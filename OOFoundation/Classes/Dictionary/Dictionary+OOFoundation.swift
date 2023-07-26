//
//  Dictionary+OOFoundation.swift
//  OOFoundation
//
//  Created by 冯天宇 on 2023/7/26.
//

import Foundation


public extension Dictionary {
    
    /// 合并 Dictionary
    /// - Parameter other: 另外一个 Dictionary
    mutating func merge(_ other: Self) {
        for (key, value) in other {
            self[key] = value
        }
    }
    
    func value<T>(_ key: Key) -> T? {
        return self[key] as? T
    }
        
    /// 从 Dictionary 中获取 String 值
    /// - Parameter key: key
    /// - Returns: String 正常返回，Int、Float、Double、Bool 会格式化为字符串， 其他类型或无法找到返回 空字符串
    func stringValue(_ key: Key) -> String {
        if let val = self[key] {
            if let v = val as? String {
                return v
            } else if val.self is Int || val.self is Float || val.self is Double || val.self is Bool {
                return "\(val)"
            } else {
                return ""
            }
        } else {
            return ""
        }
    }

    /// 从 Dictionary 中获取 Bool 值
    /// - Parameter key: key
    /// - Returns: Bool 正常返回，Array、Dictionary 返回 true，Int、Float、Double 大于 0 返回 true，String 长度大于 0, 且不为 0 或者 false， 返回 true
    func boolValue(_ key: Key) -> Bool {
        if let val = self[key] {
            if let v = val as? String {
                if v.count > 0 {
                    // 0 或者 false 返回 false
                    if v == "0" || v == "false" {
                        return false
                    }
                    return true
                } else {
                    return false
                }
            } else if let v = val as? Int {
                if v > 0 {
                    return true
                } else {
                    return false
                }
            } else if let v = val as? Float {
                if v > 0 {
                    return true
                } else {
                    return false
                }
            } else if let v = val as? Double {
                if v > 0 {
                    return true
                } else {
                    return false
                }
            } else if let v = val as? Bool {
                return v
            } else if val is Dictionary {
                return true
            } else if val is Array<Any> {
                return true
            } else {
                return false
            }

        } else {
            return false
        }
    }

}
