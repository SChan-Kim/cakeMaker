//
//  ImageInfo.swift
//  cakeMaker
//
//  Created by 김승찬 on 2021/02/01.
//

import UIKit

struct ImageInfo {
    let name: String
    
    var image: UIImage? {
        return UIImage(named: "\(name).jpg")
    }
    
    init(name: String) {
        self.name = name
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
    ImageInfo(name: "apricotBG"),
    ImageInfo(name: "blueBG"),
    ImageInfo(name: "camoBG"),
    ImageInfo(name: "greenBG"),
    ImageInfo(name: "hotpinkBG"),
    ImageInfo(name: "lightpinkBG"),
    ImageInfo(name: "mintBG"),
    ImageInfo(name: "oliveBG"),
    ImageInfo(name: "orangeBG"),
    ImageInfo(name: "purpleBG"),
    ImageInfo(name: "redBG"),
    ImageInfo(name: "skyblueBG"),
    ImageInfo(name: "whiteBG"),
    ImageInfo(name: "yellowBG")
    ]
    
    var numOfBGcolorInfoList: Int {
        return BGcolorInfoList.count
    }
    
    func colorInfo(at index: Int) -> ImageInfo {
        return BGcolorInfoList[index]
    }
    
}
