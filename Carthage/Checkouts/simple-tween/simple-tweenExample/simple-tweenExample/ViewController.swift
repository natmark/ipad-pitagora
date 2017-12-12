//
//  ViewController.swift
//  simple-tweenExample
//
//  Created by AtsuyaSato on 2017/12/12.
//  Copyright © 2017年 Atsuya Sato. All rights reserved.
//

import UIKit
import simple_tween

class ViewController: UIViewController {

    let tween = Tween(10)
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tween.start()

        let timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(self.update), userInfo: nil, repeats: true)
        timer.fire()
    }

    @objc func update(tm: Timer) {
        print(tween.isTweening ,tween.position)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

