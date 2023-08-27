//
//  ViewController.swift
//  Lesson3.01
//
//  Created by Goodwasp on 27.08.2023.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {
    @IBOutlet var coreAnimationView: UIView!
    @IBOutlet var springAnimationView: SpringView!
    
    private var animationIsStarted = false
    
    @IBAction func startCoreAnimation(_ sender: UIButton) {
        print("func")
        UIView.animate(
            withDuration: 0.5,
            delay: 0,
            options: [.autoreverse, .repeat]) { [unowned self] in
                if !animationIsStarted {
                    coreAnimationView.frame.origin.x -= 40
                    animationIsStarted.toggle()
                }
            }
        sender.pulsate()
    }
    @IBAction func startSpringAnimation(_ sender: SpringButton) {
        springAnimationView.animation = "wobble"
        springAnimationView.animate()
        
        sender.animation = "swing"
        sender.animate()
    }
}

