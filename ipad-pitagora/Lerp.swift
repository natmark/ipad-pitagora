//
//  Lerp.swift
//  ipad-pitagora
//
//  Created by AtsuyaSato on 2017/12/12.
//  Copyright © 2017年 Atsuya Sato. All rights reserved.
//

import Foundation
import UIKit

public protocol Lerpable {
    func lerp(min: Self, max: Self) -> Self
}

public func lerp<T: Lerpable>(_ weighting: T, min: T, max: T) -> T {
    return weighting.lerp(min: min, max: max)
}

// MARK: Lerpable implementations
extension Double: Lerpable {
    /// Linear interpolation
    public func lerp(min: Double, max: Double) -> Double {
        return min + (self * (max - min))
    }
}
