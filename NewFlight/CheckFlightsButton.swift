//
//  ConnectButton.swift
//  NewFlight
//
//  Created by Bruno Meneghin on 07/08/20.
//  Copyright © 2020 Bruno Meneghin. All rights reserved.
//

import Foundation
import UIKit

class CheckFlightsButton: UIButton {
    
    fileprivate let buttonBackgroundColor = UIColor(red: 142.0 / 255.0, green: 68.0 / 255.0, blue: 173.0 / 255.0, alpha: 1.0)
    
    fileprivate let titleAttributes: [NSAttributedString.Key: Any] = [
        .font: UIFont.systemFont(ofSize: UIFont.systemFontSize, weight: .heavy),
        .foregroundColor: UIColor.white,
        .kern: 1.8
    ]
    
    init(title: String) {
        super.init(frame: CGRect.zero)
        backgroundColor = buttonBackgroundColor
        contentEdgeInsets = UIEdgeInsets(top: 15.0, left: 35.0, bottom: 15.0, right: 35.0)
        layer.cornerRadius = 16.0
        translatesAutoresizingMaskIntoConstraints = false
        let title = NSAttributedString(string: title, attributes: titleAttributes)
        setAttributedTitle(title, for: .normal)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("has not been implemented - init(coder)")
    }
}



