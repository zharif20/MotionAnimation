//
//  ViewController.swift
//  MotionEffectAnimation
//
//  Created by Local on 09/09/2018.
//  Copyright © 2018 Local. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var logoImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        applyMotionEffect(toView: self.backgroundImageView, withMagnitude: 10)
        applyMotionEffect(toView: self.logoImageView, withMagnitude: -20)
        
    }

    func applyMotionEffect(toView: UIView, withMagnitude: Float) {
        
        let xMotion = UIInterpolatingMotionEffect(keyPath: "center.x", type: .tiltAlongHorizontalAxis)
        xMotion.minimumRelativeValue = -withMagnitude
        xMotion.maximumRelativeValue = withMagnitude
        
        let yMotion = UIInterpolatingMotionEffect(keyPath: "center.y", type: .tiltAlongVerticalAxis)
        yMotion.minimumRelativeValue = -withMagnitude
        yMotion.maximumRelativeValue = withMagnitude
        
        let groupMotion = UIMotionEffectGroup()
        groupMotion.motionEffects = [xMotion, yMotion]
        
        self.view.addMotionEffect(groupMotion)
    }


}

