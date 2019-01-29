//
//  RegistrationViewModel.swift
//  Tinder-Firebase-App
//
//  Created by Yura Velko on 1/29/19.
//  Copyright © 2019 Yura Velko. All rights reserved.
//

import UIKit

class RegistrationViewModel {
    
    var fullName: String? { didSet { checkFormValidity() }}
    var email: String? { didSet { checkFormValidity() }}
    var password: String? { didSet { checkFormValidity() }}
    
    fileprivate func checkFormValidity() {
        let isFormValid = fullName?.isEmpty == false && email?.isEmpty == false && password?.isEmpty == false
        isFormValidObserver?(isFormValid)
    }
    
    var isFormValidObserver: ((Bool) -> ())?
}

