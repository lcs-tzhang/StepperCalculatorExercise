//
//  MultiplicationView.swift
//  StepperCalculatorExercise
//
//  Created by xinyu zhang on 2025-02-12.
//

import SwiftUI

struct MultiplicationView: View {
    var body: some View {
        CalculationView(operation: { firstNumber, secondNumber in
            return firstNumber * secondNumber
        }, symbol: "x")
    }
}

#Preview {
    MultiplicationView()
}
