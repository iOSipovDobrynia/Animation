//
//  Parameter.swift
//  Animation
//
//  Created by Goodwasp on 27.08.2023.
//

import Foundation

struct Parameters {
    let force: Double
    let duration: Double
    let delay: Double
    let animation: String
    let curves: String
    
    static func getParameters() -> Parameters {
        let randomForce = Double.random(in: 1...2)
        let randomDuration = Double.random(in: 0.5...1)
        let randomDelay = Double.random(in: 0...0.5)
        let randomAnimation = "pop"
        let randomCurves = ""
        
        let randomParameters = Parameters(
            force: randomForce,
            duration: randomDuration,
            delay: randomDelay,
            animation: randomAnimation,
            curves: randomCurves
        )
        
        return randomParameters
    }
}
