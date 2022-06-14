//
//  BMI.swift
//  App3x 7.1 BMI Calculator
//
//  Created by Marwan Elbahnasawy on 24/05/2022.
//

import Foundation

struct BMI {
    
    
    func calculateBMI (weight: Float , height: Float) -> Float {
        
         let bmi = weight / pow(height , 2)
         return (bmi*10).rounded()/10
    }
    
    func getAdvice (bmi : Float) -> String{
        if bmi < 18.5 {
            return "You should gain some weight"
        }
        else if bmi < 24.9 {
            return "Your weight is in good condition"
        }
        else {
            return "You should lose some weight"
        }
    }
}
