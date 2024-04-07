//
//  ViewController.swift
//  HeartbeatButtonAnimation
//
//  Created by Khaled Abo hassob on 7/4/2024.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var pulsyBtn: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setupStuff()
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setupStuff()
    }


}

extension ViewController {
    
    
    //MARK:- Private methods
    
    private func setupStuff() {
        
        setupButton()
        
    }
    
    private func setupButton() {
        
        pulsyBtn.backgroundColor = .black
        pulsyBtn.isUserInteractionEnabled = true
        pulsyBtn.isEnabled = true
        
        pulsyBtn.layer.cornerRadius = pulsyBtn.frame.height/2
        let pulse1 = CASpringAnimation(keyPath: "transform.scale")
        pulse1.duration = 1
        pulse1.fromValue = 1.0
        pulse1.toValue = 1.12
        pulse1.autoreverses = true
        pulse1.repeatCount = 1
        pulse1.initialVelocity = 0.5
        pulse1.damping = 0.8
        
        let animation = CAKeyframeAnimation(keyPath: "transform.scale")
        
         animation.values = [1.0, 1.2, 1.0]
         animation.keyTimes = [0, 0.5, 1]
         animation.duration = 1.0
         animation.repeatCount = Float.infinity
        pulsyBtn.layer.add(animation, forKey: "pulse")
        
    }
}
