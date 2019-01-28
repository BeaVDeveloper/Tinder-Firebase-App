//
//  TopNavigationStackView.swift
//  Tinder-Firebase-App
//
//  Created by Yura Velko on 1/27/19.
//  Copyright © 2019 Yura Velko. All rights reserved.
//

import UIKit

class TopNavigationStackView: UIStackView {

    let settingsButton = UIButton(type: .system)
    let messageButton = UIButton(type: .system)
    let fireImageView = UIImageView(image: #imageLiteral(resourceName: "3 7"))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        heightAnchor.constraint(equalToConstant: 100)
        fireImageView.contentMode = .scaleAspectFill
        
        settingsButton.setImage(#imageLiteral(resourceName: "top_left_profile").withRenderingMode(.alwaysOriginal), for: .normal)
        settingsButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        messageButton.setImage(#imageLiteral(resourceName: "top_right_profile").withRenderingMode(.alwaysOriginal), for: .normal)
        messageButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        [settingsButton, fireImageView, messageButton].forEach { (v) in
            addArrangedSubview(v)
        }
        distribution = .equalCentering
        
        isLayoutMarginsRelativeArrangement = true
        layoutMargins = .init(top: 0, left: 16, bottom: 12, right: 16)
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
