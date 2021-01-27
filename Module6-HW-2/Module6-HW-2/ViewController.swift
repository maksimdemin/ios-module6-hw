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
        func powDigit(digit: Double) -> Double {
            guard digit >= 0 else {
                return 0
            }
            return pow(2, digit)
        }
        
        if let num = Double(digitTextField.text ?? "") {
            resultTextLabel.text = String(powDigit(digit: num))
                .replacingOccurrences(of: ".0", with: "")
            resultTextLabel.textColor = .black
        } else {
            resultTextLabel.text = "Enter an integer into the string"
            resultTextLabel.textColor = .red
        }
    }
}

