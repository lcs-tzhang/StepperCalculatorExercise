//
//  CalculationViewModel.swift
//  StepperCalculatorExercise
//
//  Created by xinyu zhang on 2025-02-22.
//

import Foundation
@Observable
class CalculationViewModel {
    var resultHistory: [CalculationResult] = []
    var providedFirstNumber: String
    var providedSecondNumber: String
    var recoverySuggestion: String = ""
    
    init(
        providedFirstNumber:String = "",
        providedSecondNumber: String =  "",
        recoverySuggestion: String = ""
    ){
        self.providedFirstNumber = providedFirstNumber
        self.providedSecondNumber = providedSecondNumber
        self.recoverySuggestion = recoverySuggestion
    }
    
    
    //MARK: Functions
    //save new results
    func saveResult(firstNumber: Int, secondNumber: Int, result: Int, symbol: String) {
            // Create a new CalculationResult instance
            let newResult = CalculationResult(firstNumber: firstNumber, secondNumber: secondNumber, result: result, symbol: symbol)
            
            // Insert the new result at the top of the history
            resultHistory.insert(newResult, at: 0)
        }
    }

