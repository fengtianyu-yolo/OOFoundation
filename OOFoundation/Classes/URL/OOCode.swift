//
//  OOCode.swift
//  OOFoundation
//
//  Created by 冯天宇 on 2023/7/26.
//

import Foundation

/// 编码
/// Example:
///
/// public extension OOCode {
///     struct Module {
///         static let code = 123456
///     }
/// }
public struct OOCode: Equatable {
    public let rawValue: Int

    public init(_ rawValue: Int) {
        self.rawValue = rawValue
    }

    ///  成功编码
    public static let success: OOCode = OOCode(0)
}
