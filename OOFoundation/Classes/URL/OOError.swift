//
//  OOError.swift
//  OOFoundation
//
//  Created by 冯天宇 on 2023/7/26.
//

import Foundation

open class OOError:NSObject, Error {
    public var code: OOCode = OOCode.success
    public var msg: String = ""
    public var debug: String = ""
    public var data: Dictionary<String, Any>?

    public init(code: OOCode = .success, msg: String = "", debug: String = "", data: Dictionary<String, Any>? = nil) {
        self.code = code
        self.msg = msg
        self.debug = debug
        self.data = data
    }
    
    open override var description: String {
        return "\(code.rawValue) \(msg) \(debug)"
    }

}
