//
//  TipCalculatorLabel.swift
//  TipCalculator
//
//  Created by Ian Richins on 5/18/20.
//  Copyright © 2020 Ian Richins. All rights reserved.
//

import UIKit

class TipCalculatorLabel: UILabel {

    override func awakeFromNib() {
        super.awakeFromNib()
        updateFontTo(font: FontNames.latoRegular)
        self.textColor = .moneyGreen
    }
    
    func updateFontTo(font: String) {
        let size = self.font.pointSize
        self.font = UIFont(name: font, size: size)
    }

}

class TipCalculatorLight: TipCalculatorLabel {
    override func awakeFromNib() {
        super.awakeFromNib()
        updateFontTo(font: FontNames.latoLight)
        self.textColor = .mintGreen
    }
}

class tipCalculatorBold: TipCalculatorLabel {
    override func awakeFromNib() {
        super.awakeFromNib()
        updateFontTo(font: FontNames.latoBold)
    }
}
