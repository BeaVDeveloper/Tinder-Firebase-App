//
//  Bindable.swift
//  Tinder-Firebase-App
//
//  Created by Yura Velko on 1/29/19.
//  Copyright © 2019 Yura Velko. All rights reserved.
//

import Foundation

class Bindable<T> {
    var value: T? {
        didSet {
            observer?(value)
        }
    }
    
    var observer: ((T?)->())?
    
    func bind(observer: @escaping (T?) ->()) {
        self.observer = observer
    }
}
