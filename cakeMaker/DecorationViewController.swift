//
//  DecorationViewController.swift
//  cakeMaker
//
//  Created by 김승찬 on 2021/02/08.
//

import UIKit

class DecorationViewController: UIViewController {
    
    @IBOutlet weak var stepLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()

        // Do any additional setup after loading the view.
    }
    
    func updateUI() {
        stepLabel.text = "Step4. 추가 데코레이션을 선택해주세요."
    }
    
}
