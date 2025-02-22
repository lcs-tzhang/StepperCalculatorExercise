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
    
    //MARK: Functions
    //save new results
    func saveResult (){
        let newResult = CalculationResult(firstNumber: firstNumber, secondNumber: secondNumber, result: result, symbol: symbol)
                resultHistory.insert(newResult, at: 0)
    }
}
