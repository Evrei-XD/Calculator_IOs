//
//  ViewController.swift
//  Calculator
//
//  Created by macbook on 17.06.2020.
//  Copyright © 2020 macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var numberFromScreen: Double = 0
    var firstNum: Double = 0
    var operation: Int = 0
    var mathSign: Bool = false
    
    
    @IBOutlet weak var resalt: UILabel!
    @IBAction func digits(_ sender: UIButton) {
        if (mathSign) {
            resalt.text = String(sender.tag)
            mathSign = false
        } else {
            resalt.text = resalt.text! + String(sender.tag)
        }
        
        numberFromScreen = Double(resalt.text!)!
    }
    @IBAction func buttons(_ sender: UIButton) {
        if resalt.text != "" && sender.tag != 10  && sender.tag != 15{
            firstNum = Double(resalt.text!)!
            
            if (sender.tag == 11){//деление
                resalt.text = "/"
            }
            if (sender.tag == 12){//умножение
                resalt.text = "x"
            }
            if (sender.tag == 13){//вычитание
                resalt.text = "-"
            }
            if (sender.tag == 14){//сложение
                resalt.text = "+"
            }
            
            operation = sender.tag
            mathSign = true
            print("text not null")
        } else if sender.tag == 15 { //посчитать
            if operation == 11 {
                resalt.text = String(firstNum / numberFromScreen)
            }
            else if operation == 12 {
                resalt.text = String(firstNum * numberFromScreen)
            }
            else if operation == 13 {
                resalt.text = String(firstNum - numberFromScreen)
            }
            else if operation == 14 {
                resalt.text = String(firstNum + numberFromScreen)
            }
                print("text null")
        } else if sender.tag == 10 {
            resalt.text = ""
            firstNum = 0
            numberFromScreen = 0
            operation = 0
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

