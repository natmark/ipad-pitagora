//
//  Countable.swift
//  ipad-pitagora
//
//  Created by AtsuyaSato on 2017/12/12.
//  Copyright © 2017年 Atsuya Sato. All rights reserved.
//

protocol Countable {
    static var count: Int { get }
}

extension Countable where Self: RawRepresentable, Self.RawValue == Int {
    internal static var count: Int {
        var count = 0
        while let _ = Self(rawValue: count) {
            count += 1
        }
        return count
    }
}
