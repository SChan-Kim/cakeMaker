//
//  CalenderViewController.swift
//  cakeMaker
//
//  Created by 김승찬 on 2021/02/01.
//

import UIKit
import FSCalendar

class CalenderViewController: UIViewController {


    @IBOutlet weak var stepLabel: UILabel!
    @IBOutlet weak var calenderVC: FSCalendar!

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    func updateUI() {
        stepLabel.text = "Step1. 픽업 날짜를 선택해주세요."
        
        // 달력의 년월 글자 바꾸기
        calenderVC.appearance.headerDateFormat = "YYYY년 M월"
        
        // 달력의 요일 글자 바꾸기
        calenderVC.locale = Locale(identifier: "ko_KR")
    }
    
    
}
