//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Александр Головин on 15.09.2020.
//  Copyright © 2020 Александр Головин. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    let backgroundImageView = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setBackground()
    }
    
    @IBAction func heightSliderChange(_ sender: UISlider) {
        
        heightLabel.text = (String(format: "%.2f", sender.value)) + " m"
    }
    
    @IBAction func wieghtSliderChange(_ sender: UISlider) {
        weightLabel.text = (String(format: "%.0f", sender.value)) + " kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        let bmi = weight / pow(height, 2)
        print((String(format: "%.2f", bmi)))
    }
    
    
    func setBackground(){
        self.view.addSubview(backgroundImageView)
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor, constant:0).isActive = true
        backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant:0).isActive = true
        backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        backgroundImageView.image = UIImage(named:"calculate_background")
        view.sendSubviewToBack(backgroundImageView)
    }


}

