//
//  CalculatorButton.swift
//  TipCalculator
//
//  Created by Ian Richins on 5/18/20.
//  Copyright © 2020 Ian Richins. All rights reserved.
//

import UIKit

class CalculatorButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        setupViews()
    }
    
    func setupViews() {
        updateFont(font: FontNames.latoRegular)
        self.backgroundColor = .subtleGreen
        self.setTitleColor(.moneyGreen, for: .normal)
        self.addCornerRadius()
    }
    
    func updateFont(font: String){
        guard let size = self.titleLabel?.font.pointSize else { return }
        self.titleLabel?.font = UIFont(name: font, size: size)
    }
}
