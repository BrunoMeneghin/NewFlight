//
//  ShowFlights.swift
//  NewFlight
//
//  Created by Bruno Meneghin on 07/08/20.
//  Copyright © 2020 Bruno Meneghin. All rights reserved.
//

import UIKit

class ShowFlightsViewController: UIViewController {
    
    // MARK: - Subviews
    
    private lazy var checkFlightsButton = CheckFlightsButton(title: "se more flights")
    private lazy var flightInformation = UIView()
    
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.navigationController?.navigationBar.barTintColor = UIColor.purple

        
        let gradientColor = CAGradientLayer()
        gradientColor.frame = self.view.frame
        gradientColor.colors = [UIColor.purple.cgColor, UIColor.black.cgColor]

        view.layer.addSublayer(gradientColor)
        view.addSubview(checkFlightsButton)
        
        checkFlightsButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        checkFlightsButton.centerYAnchor.constraint(equalTo: view.bottomAnchor, constant: -50).isActive = true
        
    }
    
}
