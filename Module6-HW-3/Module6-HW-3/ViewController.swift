//
//  ViewController.swift
//  Module6-HW-3
//
//  Created by Maksim Demin on 26.01.2021.
//

import UIKit

extension String {
    var isInt: Bool {
        return Int(self) != nil
    }
}

class ViewController: UIViewController {

  
    @IBOutlet weak var resultTextLabel: UILabel!
    
    
    @IBOutlet weak var firstNumberTextField: UITextField!
    
    @IBOutlet weak var operatorTextField: UITextField!
    
    @IBOutlet weak var secondNumberTextField: UITextField!
    
    
    func calc(firstNumber: String, secondNumber: String, operatorCalc: String) {
        if firstNumber.isInt && secondNumber.isInt {
            if operatorCalc == "+" {
                resultTextLabel.text = String(Int(firstNumber)! + Int(secondNumber)!)
            }
            else if operatorCalc == "-" {
                resultTextLabel.text = String(Int(firstNumber)! - Int(secondNumber)!)
            }
            else if operatorCalc == "*" {
                resultTextLabel.text = String(Int(firstNumber)! * Int(secondNumber)!)
            }
            else if operatorCalc == "/" {
                resultTextLabel.text = String(Double(firstNumber)! / Double(secondNumber)!)
            }
            else {
                resultTextLabel.text = "Incorrect data"
            }
        }
        else {
            resultTextLabel.text = "Incorrect data"
        }
    }
    
    @IBAction func calculateField(_ sender: Any) {

        calc(firstNumber: firstNumberTextField.text!, secondNumber: secondNumberTextField.text!, operatorCalc: operatorTextField.text!)
    }
    
}

