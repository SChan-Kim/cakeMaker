//
//  MainScreenViewController.swift
//  cakeMaker
//
//  Created by 김승찬 on 2021/01/28.
//

import UIKit

class MainScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Test"
        // Do any additional setup after loading the view.
    }
    
    
}

class MainNavigationController: UINavigationController {
    
    func overrideAnimation() {
        
        let transition = CATransition()
        transition.duration = 0.3
        transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        transition.type = CATransitionType.fade
        self.view.layer.add(transition, forKey: nil)
    }
    
    override func popToRootViewController(animated: Bool) -> [UIViewController]? {
        print("Custom Animation Triggered")
        if(viewControllers.last!.isKind(of: MainScreenViewController.self)) {
            self.overrideAnimation()
            return super.popToRootViewController(animated: false)
        } else {
            return super.popToRootViewController(animated: animated)
        }
    }
}
