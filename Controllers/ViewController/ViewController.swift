//
//  ViewController.swift
//  TipCalculator
//
//  Created by Ian Richins on 5/18/20.
//  Copyright © 2020 Ian Richins. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK: - Outlets
    @IBOutlet weak var billTotalTextFiled: UITextField!
    @IBOutlet weak var tipPercentSwitch: UISegmentedControl!
    @IBOutlet weak var tipTotalLabel: TipCalculatorLabel!
    @IBOutlet weak var billTotalLabel: TipCalculatorLabel!
    
    
    @IBOutlet weak var resetButton: UIButton!
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
    }
    @IBAction func resetButtonTapped(_ sender: Any) {
        billTotalTextFiled.text = ""
        tipPercentSwitch.selectedSegmentIndex = 0
        tipTotalLabel.text = "TIP TOTAL"
        billTotalLabel.text = "BILL TOTAL"
    }
    
    
    @IBAction func tipPercentToggled(_ sender: Any) {
        calculateTip()
    }
    
    func setUpViews() {
        self.view.backgroundColor = .subtleGreen
        resetButton.tintColor = .mintGreen
        
    }
    
    func calculateTip() {
        guard let billAmountText = billTotalTextFiled.text,
            let billAmount = Double(billAmountText) else { return }
        billTotalLabel.text = billAmountText
        if tipPercentSwitch.selectedSegmentIndex == 0 {
            let totalTip = (billAmount * 0.15)
            let totalAmount = totalTip + billAmount
            tipTotalLabel.text = "TOTAL TIP: \(totalTip)"
            billTotalLabel.text = "BILL TOTAL: \(totalAmount)"
        } else if tipPercentSwitch.selectedSegmentIndex == 1 {
            let totalTip = billAmount * 0.20
            let totalAmount = totalTip + billAmount
            tipTotalLabel.text = "TOTAL TIP: \(totalTip)"
            billTotalLabel.text = "BILL TOTAL: \(totalAmount)"
        } else {
            let totalTip = billAmount * 0.25
            let totalAmount = totalTip + billAmount
            tipTotalLabel.text = "TOTAL TIP: \(totalTip)"
            billTotalLabel.text = "BILL TOTAL: \(totalAmount)"
        }
    }
}



