//
//  ViewController.swift
//  NewFlight
//
//  Created by Bruno Meneghin on 07/08/20.
//  Copyright © 2020 Bruno Meneghin. All rights reserved.
//

import UIKit

class CheckFlightsViewController: UIViewController {
    
    // MARK: - Subviews
     
    private let showFlightsViewController = ShowFlightsViewController()
    private lazy var checkFlightsButton = CheckFlightsButton(title: "flights")
    
    private lazy var checkFlightsLabel: UILabel = {
        let label = UILabel()
        label.text = "Checkout your flights"
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var checkFlightsDatePicker: UIDatePicker = {
        let datePicker = UIDatePicker()
        datePicker.calendar = .current
        datePicker.sizeToFit()
        datePicker.translatesAutoresizingMaskIntoConstraints = false
        
        return datePicker
    }()
    
    // MARK: - lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.barTintColor = UIColor.white
        view.backgroundColor = UIColor.white
       
        title = "Your Flight"
        
        view.addSubview(checkFlightsDatePicker)
        view.addSubview(checkFlightsButton)
        view.addSubview(checkFlightsLabel)
        
        checkFlightsButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        checkFlightsButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        checkFlightsLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        checkFlightsLabel.centerYAnchor.constraint(equalTo: checkFlightsButton.topAnchor, constant: -40).isActive = true
        
        checkFlightsDatePicker.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        checkFlightsDatePicker.centerYAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true
        
        checkFlightsButton.sizeToFit()
        checkFlightsLabel.sizeToFit()
        checkFlightsDatePicker.sizeToFit()
        
        checkFlightsButton.addTarget(self, action: #selector(didTapCheckFlightButton(_:)), for: .touchUpInside)
    }
    
    // MARK: - Actions
    
    @objc func didTapCheckFlightButton(_ button: UIButton) {
        
        // This is a test only
        self.present(showFlightsViewController, animated: true, completion: { () in
            print("done ~ completion")
        })
    }
    
}

