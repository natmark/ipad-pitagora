//
//  Scene4.swift
//  ipad-pitagora
//
//  Created by AtsuyaSato on 2017/12/13.
//  Copyright © 2017年 Atsuya Sato. All rights reserved.
//

import ProcessingKit
import simple_tween

extension PitagoraView {
    func setupScene4() {
        sceneInfos[Scene.scene4.rawValue] = (Tween(2), #selector(setup4), #selector(draw4))
    }

    func setup4() {
        background(255, 0, 0)
    }

    func draw4() {
        background(255, 0, 0)
        let x = lerp(sceneInfos[Scene.scene4.rawValue].tween.position, min: Double(width/2), max: Double(width + 100))
        fill(255, 255, 255)
        ellipse(CGFloat(x), height/2, 100, 100)
    }
}
