//
//  CakeSelectionViewController.swift
//  cakeMaker
//
//  Created by 김승찬 on 2021/01/22.
//

import UIKit

class CakeSelectionViewController: UIViewController {
    
    @IBOutlet weak var stepLabel: UILabel!
    
    let viewModel = TasteViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()

        // Do any additional setup after loading the view.
    }
    
    func updateUI() {
        stepLabel.text = "Step2. 케이크 크기와 맛을 선택해주세요."
    }
    
}

extension CakeSelectionViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.numOftasteInfoList
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SelectionCell", for: indexPath) as? SelectionCell else {
            return UICollectionViewCell()
        }
        
        let tasteInfo = viewModel.tasteInfo(at: indexPath.item)
        cell.updateImageUI(info: tasteInfo)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("--> selected")
    }
}

extension CakeSelectionViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 374, height: 122)
    }
}

class SelectionCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbnail: UIImageView!
    
    func updateImageUI(info: ImageInfo) {
        thumbnail.image = info.image
    }
    
}

