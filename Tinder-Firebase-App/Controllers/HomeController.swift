//
//  ViewController.swift
//  Tinder-Firebase-App
//
//  Created by Yura Velko on 1/27/19.
//  Copyright © 2019 Yura Velko. All rights reserved.
//

import UIKit

class HomeController: UIViewController {

    let topStackView = TopNavigationStackView()
    let cardsDeckView = UIView()
    let buttonStackView = HomeBottomControlsStackView()
    
    
    let cardViewModless: [CardViewModel] = {
        let producers = [
            User(name: "Kelly", age: 23, profession: "Music DJ", imageName: "lady5c"),
            User(name: "Jane", age: 18, profession: "Teacher", imageName: "lady4c"),
            Advertiser(title: "Some advertiser text", brandName: "Brand Name", posterPhotoName: "slide_out_menu_poster")
        ] as [ProducesCardViewModel]
        
        let viewModels = producers.map({$0.toCardViewModel()})
        return viewModels
    }()
    
    let cardViewModels = ([
       
        ] as [ProducesCardViewModel]).map({$0.toCardViewModel()})
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
        setupCards()
    }

    fileprivate func setupCards() {
        
        cardViewModels.forEach { (cardVM) in
            let cardView = CardView(frame: .zero)
            cardView.cardViewModel = cardVM
            cardsDeckView.addSubview(cardView)
            cardView.fillSuperview()
        }
    }
    
    //MARK: - Fileprivate
    
    fileprivate func setupLayout() {
        let overallStackView = UIStackView(arrangedSubviews: [topStackView, cardsDeckView, buttonStackView])
        overallStackView.axis = .vertical
        view.addSubview(overallStackView)
        overallStackView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom:  view.safeAreaLayoutGuide.bottomAnchor, trailing: view.trailingAnchor, padding: .init(top: 12, left: 0, bottom: 0, right: 0), size: .zero)
        overallStackView.isLayoutMarginsRelativeArrangement = true
        overallStackView.layoutMargins = .init(top: 0, left: 12, bottom: 0, right: 12)
        
        overallStackView.bringSubviewToFront(cardsDeckView)
    }
}

