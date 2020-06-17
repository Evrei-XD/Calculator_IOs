//
//  ViewController.swift
//  Calculator
//
//  Created by macbook on 17.06.2020.
//  Copyright © 2020 macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var resalt: UILabel!
    @IBAction func digits(_ sender: UIButton) {
        resalt.text = resalt.text! + String(sender.tag)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

