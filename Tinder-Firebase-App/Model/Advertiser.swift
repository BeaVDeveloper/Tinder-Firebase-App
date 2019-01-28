//
//  Advertiser.swift
//  Tinder-Firebase-App
//
//  Created by Yura Velko on 1/27/19.
//  Copyright © 2019 Yura Velko. All rights reserved.
//

import UIKit

struct Advertiser: ProducesCardViewModel {
    
    let title: String
    let brandName: String
    let posterPhotoName: String
    
    func toCardViewModel() -> CardViewModel {
        
        let atributtedString = NSMutableAttributedString(string: title, attributes: [.font: UIFont.systemFont(ofSize: 34, weight: .heavy)])
        atributtedString.append(NSAttributedString(string: "\n" + brandName, attributes: [.font: UIFont.systemFont(ofSize: 24, weight: .bold)] ))
        
        return CardViewModel(imageNames: [posterPhotoName], attributedString: atributtedString, textAlignment: .center)
    }
}

