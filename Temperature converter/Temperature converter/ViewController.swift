//
//  ViewController.swift
//  Temperature converter
//
//  Created by giorgi on 1/12/22.
//  Copyright © 2022 Gai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

 
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var resultLabel: UILabel!
    @IBAction func button(_ sender: UIButton) {
        
        //text field variable
        let text = Int(textField.text!) ?? 0
        
        // This calculates temperatures
        switch segmentedControl.selectedSegmentIndex{
        case 0 :
            //This displays color by degree
            if text >= 118{
                resultLabel.textColor = .red
            } else if text <= -32 {
                resultLabel.textColor = .cyan
            } else {
                resultLabel.textColor = .white
            }
            //This displays text
            resultLabel.text = "\(text) °C"
        case 1:
            //This is fahrenheit to celsius formula
            let fahrenheitToCelsius = (text - 32) * 5/9
            //This displays color by degree
            if fahrenheitToCelsius >= 118{
                resultLabel.textColor = .red
            } else if fahrenheitToCelsius <= -10 {
                resultLabel.textColor = .cyan
            } else {
                resultLabel.textColor = .white
            }
            //This displays text
            resultLabel.text = "\(fahrenheitToCelsius) °C"
        case 2:
            //This calculates kelvin to celsius
            let kelvinToCelsius = text - 273
            //This displays text
            if kelvinToCelsius >= 118 {
                resultLabel.textColor = .red
            } else if kelvinToCelsius <= -32{
                resultLabel.textColor = .cyan
            } else{
                resultLabel.textColor = .white
            }
            //This displays result
            resultLabel.text = "\(kelvinToCelsius) °C"
        default:
            resultLabel.text = "Error:("
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
}

