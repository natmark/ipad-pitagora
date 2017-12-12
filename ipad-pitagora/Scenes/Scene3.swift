//
//  Scene3.swift
//  ipad-pitagora
//
//  Created by AtsuyaSato on 2017/12/13.
//  Copyright © 2017年 Atsuya Sato. All rights reserved.
//

import ProcessingKit
import simple_tween

extension PitagoraView {
    func setupScene3() {
        sceneInfos[Scene.scene3.rawValue] = (Tween(1), #selector(setup3), #selector(draw3))
    }

    func setup3() {
        background(255, 255, 255)
    }

    func draw3() {
        let size = lerp(sceneInfos[Scene.scene3.rawValue].tween.position, min: 0, max: Double(width)) * 2
        fill(255, 0, 0)
        arc(0, height, CGFloat(size), 0, 90)
    }
}
