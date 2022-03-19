//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Lucie Hrbkova on 15/01/2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi : BMI?
    
    mutating func calculateBmi(h: Float, w: Float) {
        let bmiValue = w / pow(h, 2)
//        first write the following line and ten copy and paste it! double click on icon
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: UIColor {_ in return #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)})
        } else if bmiValue <= 24.9 {
            bmi = BMI(value: bmiValue, advice: "Eat as a fiddle!", color: UIColor {_ in return #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)})
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: UIColor {_ in return #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)})
        }
    }
    
    func getBmiValue() -> String  {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Calculate again"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
    }
}

