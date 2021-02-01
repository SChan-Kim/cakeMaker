//
//  ColorViewController.swift
//  cakeMaker
//
//  Created by 김승찬 on 2021/02/01.
//

import UIKit

class ColorViewController: UIViewController {

    @IBOutlet weak var stepLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    func updateUI() {
        stepLabel.text = "Step3. 배경색과 크림색을 선택해주세요."
    }
    
}
