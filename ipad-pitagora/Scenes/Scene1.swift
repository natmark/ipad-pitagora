//
//  Scene1.swift
//  ipad-pitagora
//
//  Created by AtsuyaSato on 2017/12/12.
//  Copyright © 2017年 Atsuya Sato. All rights reserved.
//

import ProcessingKit
import simple_tween

extension PitagoraView {
    func setupScene1() {
        sceneInfos[Scene.scene1.rawValue] = (Tween(3), #selector(setup1), #selector(draw1))
    }

    func setup1() {
        background(255, 255, 255)
    }

    func draw1() {
        let x = lerp(sceneInfos[Scene.scene1.rawValue].tween.position, min: 0, max: Double(width))
        fill(255, 0, 0)
        ellipse(CGFloat(x), 100, 100, 100)
    }
}
