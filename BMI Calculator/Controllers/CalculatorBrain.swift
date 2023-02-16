//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Carlos Evelo on 2/16/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more!", color: .blue)
        }
        else if bmiValue > 24.9 {
            bmi = BMI(value: bmiValue, advice: "Eat less!", color: .red)
        }
        else {
            bmi = BMI(value: bmiValue, advice: "Eat the same!", color: .green)
        }
        
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .gray
    }
}
