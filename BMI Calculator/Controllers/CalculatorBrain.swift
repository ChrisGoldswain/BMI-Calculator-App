//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Christopher Goldswain on 30.01.23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation
import UIKit
struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: .blue)
        } else if bmiValue < 24.9 {
                bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: .green)
        }
        else {
                    bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: .red)
        }
        
    }

    func getAdvice() -> String {
        return bmi?.advice ?? "Error"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .red
    }
}

// UIColor(_colorLiteralRed: 0, green: 180, blue: 285, alpha: 1)
// UIColor(_colorLiteralRed: 81, green: 245, blue: 198, alpha: 1)
// UIColor(_colorLiteralRed: 250, green: 110, blue: 140, alpha: 1)
