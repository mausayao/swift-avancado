//
//  ViewController.swift
//  Auto Laytout
//
//  Created by Maurício de Freitas Sayão on 13/05/19.
//  Copyright © 2019 Maurício de Freitas Sayão. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numValueText: UILabel!
    private var isFinishType: Bool = true
    
    private var displayValue: Double {
        get {
            guard let number = Double(numValueText.text!) else {
                fatalError("Cannot convert value to Double!")
            }
            return number
        }
        
        set {
            numValueText.text = String(newValue)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func calculatorAction(_ sender: UIButton) {
        isFinishType = true
        
        if let calculatorSymbol = sender.currentTitle {
            if calculatorSymbol == "+/-" {
                displayValue = displayValue * -1
            }
            
            if calculatorSymbol == "%" {
                displayValue = displayValue/100
            }
            
            if calculatorSymbol == "AC" {
               displayValue = 0
            }
        }
        
    }
    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        
        if let numberValue = sender.currentTitle {
            if isFinishType {
                displayValue = Double(numberValue)!
                isFinishType = false
            } else {
                if numberValue == "." {
                    let isInt =  floor(displayValue) == displayValue
                    
                    if !isInt {
                        return
                    }
                }
                
                numValueText.text = numValueText.text! + numberValue
            }
        }
    }
    
}

