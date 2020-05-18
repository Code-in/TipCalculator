//
//  StyleGuide.swift
//  TipCalculator
//
//  Created by Ian Richins on 5/18/20.
//  Copyright © 2020 Ian Richins. All rights reserved.
//

import UIKit

extension UIView {
    
    func addCornerRadius(_ radius: CGFloat = 4) {
        self.layer.cornerRadius = radius
    }
    
    func addAccentBorder(width: CGFloat = 1, color: UIColor = .systemGray) {
        self.layer.borderWidth = width
        self.layer.borderColor = color.cgColor
    }
    
    struct FontNames {
        static let latoBold = "Lato-Bold"
        static let latoRegular = "Lato-Regular"
        static let latoLight = "Lato=Light"
    }

}

extension UIColor {
    static let burntRed = UIColor(named: "burtRed")!
    static let mintGreen = UIColor(named: "mintGreen")!
    static let moneyGreen = UIColor(named: "moneyGreen")!
    static let peach = UIColor(named: "peach")!
    static let subtleGreen = UIColor(named: "subtleGreen")!
}
