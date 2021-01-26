//
//  ViewController.swift
//  Module6-HW-1
//
//  Created by Maksim Demin on 26.01.2021.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var resultTextLabel: UILabel!
    
    @IBOutlet weak var originalTextField: UITextField!
    
    var name = ""
    @IBAction func converField(_ sender: Any) {
        
        name += "\(originalTextField.text!) "
        resultTextLabel.text = name
        
    }
    
    @IBAction func clearField(_ sender: Any) {
        name = ""
        resultTextLabel.text = name
    }
}

