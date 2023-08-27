//
//  ViewController.swift
//  Lesson3.01
//
//  Created by Goodwasp on 27.08.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var coreAnimationView: UIView!
    
    @IBAction func startCoreAnimation(_ sender: UIButton) {
        print("func")
        sender.pulsate()
    }
}

