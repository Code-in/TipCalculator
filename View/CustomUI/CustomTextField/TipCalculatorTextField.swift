//
//  TipCalculatorTextField.swift
//  TipCalculator
//
//  Created by Ian Richins on 5/18/20.
//  Copyright © 2020 Ian Richins. All rights reserved.
//

import UIKit

class TipCalculatorTextField: UITextField {

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func setUpViews() {
        self.addCornerRadius(15)
        self.addAccentBorder()
        self.updateFontTo(font: FontNames.latoRegular)
        self.setUpPlaceHolder()
        self.textColor = .burntRed
        self.tintColor = .peach
        self.backgroundColor = .subtleGreen
        self.layer.masksToBounds = true
    }
    
    func updateFontTo(font: String) {
        guard let size = self.font?.pointSize else { return }
        self.font = UIFont(name: font, size: size)
    }
    
    func setUpPlaceHolder() {
        let currentPlaceholder = self.placeholder
        self.attributedPlaceholder = NSAttributedString(string: currentPlaceholder ?? "", attributes: [
            NSAttributedString.Key.foregroundColor: UIColor.moneyGreen,
            NSAttributedString.Key.font: UIFont(name: FontNames.latoLight, size: 20)!
        ])
    }
}
