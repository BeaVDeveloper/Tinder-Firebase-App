//
//  SettingsCell.swift
//  Tinder-Firebase-App
//
//  Created by Yura Velko on 2/2/19.
//  Copyright © 2019 Yura Velko. All rights reserved.
//

import UIKit

class SettingsCell: UITableViewCell {
    
    let textField: CustomTextField = {
        let tf = CustomTextField(padding: 24, height: 44)
        tf.placeholder = "Enter Name"
        return tf
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(textField)
        textField.fillSuperview()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
