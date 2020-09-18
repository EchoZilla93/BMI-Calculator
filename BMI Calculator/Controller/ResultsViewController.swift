//
//  ResultsViewController.swift
//  BMI CalculatorBrain
//
//  Created by Александр Головин on 16.09.2020.
//  Copyright © 2020 Александр Головин. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var BMIValue: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var bmiValue:String?
    var advice:String?
    var color:UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        BMIValue.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
        
    }
    
    @IBAction func recalculateBtnPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
