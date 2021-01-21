//
//  CakeSelectionViewController.swift
//  cakeMaker
//
//  Created by 김승찬 on 2021/01/22.
//

import UIKit

class CakeSelectionViewController: UIViewController {
    
    @IBOutlet weak var sectionTitle: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
}

extension CakeSelectionViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SelectionCell", for: indexPath) as? SelectionCell else {
            return UICollectionViewCell()
        }
        
        cell.updateUI()
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("--> selected")
    }
}

extension CakeSelectionViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 120, height: 160)
    }
}



class SelectionCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbnail: UIImageView!
    
    func updateUI() {
        thumbnail.image = UIImage(named: "test1")
    }
    
}
