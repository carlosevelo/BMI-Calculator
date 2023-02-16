//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Carlos Evelo on 2/16/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    var bmi: Float?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        bmi = weight / pow(height, 2)
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi ?? "")
    }
}
