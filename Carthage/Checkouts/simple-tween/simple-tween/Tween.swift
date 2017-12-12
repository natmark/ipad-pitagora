//
//  Tween.swift
//  simple-tween
//
//  Created by AtsuyaSato on 2017/12/03.
//  Copyright © 2017年 Atsuya Sato. All rights reserved.
//

import Foundation

public class Tween {
    public var isTweening: Bool = false

    private var timer: Timer?
    private var endTime: TimeInterval
    private var time: TimeInterval = 0

    init(_ endTime: TimeInterval) {
        self.endTime = endTime

        timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(self.update), userInfo: nil, repeats: true)
    }

    @objc private func update() {
        if isTweening {
            if endTime > time + 0.01 {
                time += 0.01
            } else {
                time = endTime
                isTweening = false
                timer?.invalidate()
            }
        }
    }

    public func pause() {
        timer?.invalidate()
    }

    public func start() {
        timer?.fire()
        if !isTweening {
            isTweening = true
        }
    }

    public func position() -> TimeInterval {
        return endTime / time
    }
}
