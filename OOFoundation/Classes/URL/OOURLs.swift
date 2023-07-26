//
//  OOURLs.swift
//  OOFoundation
//
//  Created by 冯天宇 on 2023/7/26.
//

import Foundation

/// 工程内的URL
public struct OOURLs {
    
    public static let host = "http://0.0.0.0"
    
    struct Common {
        static let sampleUrl = OOURLs.host + "/"
    }
}

/// 其他模块的URL定义方式
extension OOURLs {
    struct MyModule {
        static let xxUURL = OOURLs.host + "/xxxx"
    }
}

