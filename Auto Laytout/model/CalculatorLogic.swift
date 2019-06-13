//
//  CalculatorLogic.swift
//  Auto Laytout
//
//  Created by Maurício de Freitas Sayão on 12/06/19.
//  Copyright © 2019 Maurício de Freitas Sayão. All rights reserved.
//

import Foundation


struct CalculatorLogic {
    
    private var number: Double?
    private var intermediateCalculation: (number: Double, symbol: String)?
    
    mutating func setNumber(number: Double) {
        self.number = number
    }
    
    mutating func calculate(symbol: String) -> Double? {
        
        if let numberNotNil = number {
            
            switch symbol {
            case "+/-":
                return numberNotNil * -1
            case "%":
                return numberNotNil * 0.01
            case "AC":
                return 0
            case "=":
                return executeCalc(number: numberNotNil)
            default:
                intermediateCalculation = (number: numberNotNil, symbol: symbol)
            }
        }
        return nil
    }
    
    func executeCalc(number: Double) -> Double? {
        if let numberAndSymbol = intermediateCalculation {
            switch numberAndSymbol.symbol {
            case "+":
                return numberAndSymbol.number + number
            case "-":
                return numberAndSymbol.number - number
            case "/":
                return numberAndSymbol.number / number
            case "X":
                return numberAndSymbol.number * number
            default:
                return nil
            }
        }
        return nil
    }
}
