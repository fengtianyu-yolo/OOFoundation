//
//  IRAppStorage.swift
//  OOFoundation
//
//  Created by 冯天宇 on 2023/7/26.
//

import UIKit

@propertyWrapper
public struct IRAppStorage<T> {
    
    public let key: String // 属性存储的Key
    public let defaultValue: T // 属性的默认值

    public var wrappedValue: T {
        get {
            return UserDefaults.standard.object(forKey: key) as? T ?? defaultValue
        }
        set {
            UserDefaults.standard.set(newValue, forKey: key)
        }
    }
    
    public init(key: String, defaultValue: T) {
        self.key = key
        self.defaultValue = defaultValue
    }
    
}
