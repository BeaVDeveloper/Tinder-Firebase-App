//
//  HomeBottomControlsStackView.swift
//  Tinder-Firebase-App
//
//  Created by Yura Velko on 1/27/19.
//  Copyright © 2019 Yura Velko. All rights reserved.
//

import UIKit

class HomeBottomControlsStackView: UIStackView {

    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        distribution = .fillEqually
        heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        let subviews = [#imageLiteral(resourceName: "refresh_circle"), #imageLiteral(resourceName: "dissmis_circle"), #imageLiteral(resourceName: "super_like_circle"), #imageLiteral(resourceName: "like_cricle"), #imageLiteral(resourceName: "boost_circle")].map { (img) -> UIView in
            let button = UIButton(type: .system)
            button.setImage(img.withRenderingMode(.alwaysOriginal), for: .normal)
            return button
        }
        subviews.forEach({addArrangedSubview($0)})
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
