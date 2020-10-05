//
//  MainCalculator.swift
//  BMI Calc
//

//  Copyright © 2020 Harsh Patel. All rights reserved.
//

import UIKit

struct MainCalculator {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        
        return bmi?.advice ?? "no advice"
    }
    
    func getColor() -> UIColor {
        
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    mutating func calculatorBMI(height: Float, weight: Float) {
         let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more healthy food!", color:#colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1))
        } else if bmiValue  < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Maintain this fit body!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Stop eating unhealthy food!", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        }
    }
}
