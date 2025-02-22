//
//  CalculationItemView.swift
//  StepperCalculatorExercise
//
//  Created by xinyu zhang on 2025-02-22.
//

import SwiftUI

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

#Preview {
    List {
        CalculationItemView(result: CalculationResult(firstNumber: 3, secondNumber: 2, result: 5, symbol: "+"))
        CalculationItemView(result: CalculationResult(firstNumber: 4, secondNumber: 5, result: 20, symbol: "×"))
    }
    .listStyle(.plain)
}
