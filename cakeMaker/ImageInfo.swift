//
//  ImageInfo.swift
//  cakeMaker
//
//  Created by 김승찬 on 2021/02/01.
//

import UIKit

struct ImageInfo {
    let name: String
    let nameLabel: String
    
    var image: UIImage? {
        return UIImage(named: "\(name).jpg")
    }
    
    init(name: String) {
        self.name = name
        self.nameLabel = name
    }
    
    init(name: String, nameLabel: String) {
        self.name = name
        self.nameLabel = nameLabel
    }
    
}

// 맛 정보
class TasteViewModel {
    let tasteInfoList: [ImageInfo] = [
    ImageInfo(name: "chocolate"),
    ImageInfo(name: "cheeze"),
    ImageInfo(name: "tiramisu")
    ]
    
    var numOftasteInfoList: Int {
        return tasteInfoList.count
    }
    
    func tasteInfo(at index: Int) -> ImageInfo {
        return tasteInfoList[index]
    }
    
}

// 배경색 정보
class BGColorViewModel {
    let BGcolorInfoList: [ImageInfo] = [
    ImageInfo(name: "apricotBG", nameLabel: "살구"),
    ImageInfo(name: "blueBG", nameLabel: "파랑"),
    ImageInfo(name: "camoBG", nameLabel: "밀리터리"),
    ImageInfo(name: "greenBG", nameLabel: "초록"),
    ImageInfo(name: "hotpinkBG", nameLabel: "진분홍"),
    ImageInfo(name: "lightpinkBG", nameLabel: "연분홍"),
    ImageInfo(name: "mintBG",nameLabel: "민트"),
    ImageInfo(name: "oliveBG",nameLabel: "올리브"),
    ImageInfo(name: "orangeBG",nameLabel: "주황"),
    ImageInfo(name: "purpleBG",nameLabel: "보라"),
    ImageInfo(name: "redBG", nameLabel: "빨강"),
    ImageInfo(name: "skyblueBG", nameLabel: "소라"),
    ImageInfo(name: "whiteBG", nameLabel: "흰색"),
    ImageInfo(name: "yellowBG", nameLabel: "노랑")
    ]
    
    var numOfBGcolorInfoList: Int {
        return BGcolorInfoList.count
    }
    
    func BGcolorInfo(at index: Int) -> ImageInfo {
        return BGcolorInfoList[index]
    }
    
    
}
