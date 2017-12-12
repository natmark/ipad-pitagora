//
//  PitagoraView.swift
//  ipad-pitagora
//
//  Created by AtsuyaSato on 2017/12/12.
//  Copyright © 2017年 Atsuya Sato. All rights reserved.
//

import ProcessingKit
import simple_tween

public enum Scene: Int, Countable {
    case scene1
    case scene2
    case scene3
    case scene4
}

class PitagoraView: ProcessingView {
    var sceneInfos = [(tween: Tween, setup: Selector?, draw: Selector?)]()

    func setup() {
        sceneInfos = Array(repeating: (Tween(0), nil, nil), count: Scene.count)
        setupScene1()
        setupScene2()
        setupScene3()
        setupScene4()
        startScene(scene: .scene1)
    }

    func draw() {
        for (index, element) in sceneInfos.enumerated() {
            if element.tween.isTweening {
                perform(element.draw)
            } else if element.tween.position == 1.0 && index < Scene.count - 1 {
                startScene(scene: Scene(rawValue: index + 1)!)
            }
        }
    }

    func startScene(scene: Scene) {
        if sceneInfos[scene.rawValue].tween.position == 0.0 {
            sceneInfos[scene.rawValue].tween.start()
            perform(sceneInfos[scene.rawValue].setup)
        }
    }
}
