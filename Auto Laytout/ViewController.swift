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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func calculatorAction(_ sender: UIButton) {
        isFinishType = true
    }
    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        
        if let numberValue = sender.currentTitle {
            if isFinishType {
                numValueText.text = numberValue
                isFinishType = false
            } else {
                numValueText.text = numValueText.text! + numberValue
            }
        }
    }
    
}

