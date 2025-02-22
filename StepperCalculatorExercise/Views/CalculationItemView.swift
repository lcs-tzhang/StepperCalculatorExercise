//
//  CalculationItemView.swift
//  StepperCalculatorExercise
//
//  Created by xinyu zhang on 2025-02-22.
//

import Foundation

struct CalculationItemView : View{
    let result: CalculationResult
    var body: some View {
        HStack{
            Text("\(result.firstNumber)\(result.symbol)\(result.secondNumber) = \(result.result)")
                .font(.largeTitle)
            Spacer()
        }
    }
}


