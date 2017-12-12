//
//  Scene2.swift
//  ipad-pitagora
//
//  Created by AtsuyaSato on 2017/12/12.
//  Copyright © 2017年 Atsuya Sato. All rights reserved.
//

import ProcessingKit
import simple_tween

extension PitagoraView {
    func setupScene2() {
        sceneInfos[Scene.scene2.rawValue] = (Tween(1), #selector(setup2), #selector(draw2))
    }

    func setup2() {
        background(255, 255, 255)
    }

    func draw2() {
        background(255, 255, 255)

        let y = lerp(sceneInfos[Scene.scene2.rawValue].tween.position, min: 100, max: Double(height))
        let x = lerp(sceneInfos[Scene.scene2.rawValue].tween.position, min: Double(width), max: 0)
        fill(255, 0, 0)
        ellipse(CGFloat(x), CGFloat(y), 100, 100)
    }
}
