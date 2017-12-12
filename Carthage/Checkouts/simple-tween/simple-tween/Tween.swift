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
    public var position: Double {
        get {
            return time / endTime
        }
    }

    private var timer: Timer?
    private var endTime: TimeInterval
    private var time: TimeInterval = 0
    private var timeInterval: TimeInterval = 0.01

    public init(_ endTime: TimeInterval, interval: TimeInterval = 0.01) {
        self.endTime = endTime
        self.timeInterval = interval

        timer = Timer.scheduledTimer(timeInterval: timeInterval, target: self, selector: #selector(self.update), userInfo: nil, repeats: true)
    }

    @objc private func update() {
        if isTweening {
            if endTime > time + timeInterval {
                time += timeInterval
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
}
