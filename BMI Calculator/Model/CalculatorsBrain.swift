//
//  Calculator.swift
//  BMI CalculatorBrain
//
//  Created by Александр Головин on 18.09.2020.
//  Copyright © 2020 Александр Головин. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi:BMI?
    
    func getBMIValue() -> String{
           let bmiTo1DecimalPlace = String(format:"%.1f", bmi?.value ?? 0.0)
               return bmiTo1DecimalPlace
           }
           
           func getAdvice() -> String {
               return bmi?.advice ?? "No advice"
           }
           
           func getColor() -> UIColor {
               return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
           }
    
    mutating func calculateBMI(height:Float, weight:Float){
        let bmiValue = weight / (height * height)
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "Eat more burgers", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
            print("underweight")
        }else if bmiValue > 18.5 && bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "U r Ok friend", color: #colorLiteral(red: 0.520678175, green: 1, blue: 0.5313062818, alpha: 1))
            print("normal weight")
        }else{
            bmi = BMI(value: bmiValue, advice: "Eat less burgers", color: #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1))
            print("overweight")
        }
    
    }
}
