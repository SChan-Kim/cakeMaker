//
//  ColorViewController.swift
//  cakeMaker
//
//  Created by 김승찬 on 2021/02/01.
//

import UIKit

class ColorViewController: UIViewController {

    @IBOutlet weak var BGColorCollectionView: UICollectionView!
    @IBOutlet weak var CreamColorCollectionView: UICollectionView!
    @IBOutlet weak var stepLabel: UILabel!
    
    let BGViewModel = BGColorViewModel()
    let CreamViewModel = CreamColorViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    func updateUI() {
        stepLabel.text = "Step3. 배경색과 크림색을 선택해주세요."
    }
    
}

extension ColorViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == BGColorCollectionView {
            return BGViewModel.numOfBGColorInfoList
        } else if collectionView == CreamColorCollectionView {
            return CreamViewModel.numOfCreamColorInfoList
        } else {
            return 1
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == BGColorCollectionView {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BGColorCell", for: indexPath) as? BGColorCell else {
                return UICollectionViewCell()
            }
            
            let BGcolorinfo = BGViewModel.BGColorInfo(at: indexPath.item)
            cell.updateUI(info: BGcolorinfo)
            
            return cell
        } else if collectionView == CreamColorCollectionView {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CreamColorCell", for: indexPath) as? CreamColorCell else {
                return UICollectionViewCell()
            }
            
            let CreamColorinfo = CreamViewModel.CreamColorInfo(at: indexPath.item)
            cell.updateUI(info: CreamColorinfo)
            
            return cell
        } else {
            return UICollectionViewCell()
        }
    }
}

extension ColorViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // 전체 뷰 사이즈 기준으로 마진설정 다시하기
        return CGSize(width: 100, height: 120)
    }
}

class BGColorCell: UICollectionViewCell {
    
    @IBOutlet weak var BGColorImage: UIImageView!
    @IBOutlet weak var BGColorName: UILabel!
    
    func updateUI(info: ImageInfo) {
        BGColorImage.image = info.image
        BGColorName.text = info.nameLabel
    }
    
}

class CreamColorCell: UICollectionViewCell {
    
    @IBOutlet weak var CreamColorImage: UIImageView!
    @IBOutlet weak var CreamColorName: UILabel!
    
    func updateUI(info: ImageInfo) {
        CreamColorImage.image = info.image
        CreamColorName.text = info.nameLabel
    }
}
