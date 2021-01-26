//
//  ViewController.swift
//  Module6-HW-2
//
//  Created by Maksim Demin on 26.01.2021.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var resultTextLabel: UILabel!
    
    @IBOutlet weak var digitTextField: UITextField!
    
    
    @IBAction func calculateField(_ sender: Any) {
        func powDigit(digit: Double) -> Int {
            guard digit >= 0 else {
                return 0
            }
            return Int(pow(2, digit))
        }
        
        
        let numberCharacters = NSCharacterSet.decimalDigits

        if Int(digitTextField.text!) != nil
            {
            resultTextLabel.text = String(powDigit(digit: Double(digitTextField.text!)!))
        }
        else if (digitTextField.text?.rangeOfCharacter(from: numberCharacters) == nil || Int(digitTextField.text!) == nil)
        {
            resultTextLabel.text = "Enter an integer into the string"
        }
    }
}

