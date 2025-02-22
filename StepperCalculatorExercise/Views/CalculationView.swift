//
//  calculationView.swift
//  StepperCalculatorExercise
//
//  Created by xinyu zhang on 2025-02-12.
//

import SwiftUI

struct CalculationView: View {
    
    let operation: (Int, Int) -> Int
    let symbol: String
    
    @State var firstNumber: Int = 1
    @State var secondNumber: Int = 1
    
    // ViewModel to handle history and calculations
    @State var viewModel = CalculationViewModel()
    
    var body: some View {
        VStack {
            Spacer()
            
            // INPUT for first number
            VStack(alignment: .leading) {
                Text("Select first number")
                    .font(.headline)
                HStack {
                    Text("\(firstNumber)")
                        .font(.system(size: 64))
                    Spacer()
                    Stepper("", value: $firstNumber)
                }
            }
            
            // Operation symbol
            Text(symbol)
                .font(.system(size: 64))
                .padding()
            
            Spacer()
            
            // INPUT for second number
            VStack(alignment: .leading) {
                Text("Select second number")
                    .font(.headline)
                HStack {
                    Text("\(secondNumber)")
                        .font(.system(size: 64))
                    Spacer()
                    Stepper("", value: $secondNumber)
                }
            }
            
            Spacer()
            
            // Display result
            Text("\(operation(firstNumber, secondNumber))")
                .font(.system(size: 96))
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.trailing)
                .padding()
            
            // Save button
            Button {
                viewModel.saveResult
            } label: {
                Text("Save")
            }
            .buttonStyle(.borderedProminent)
            .padding(.bottom)
            
            // History title
            HStack {
                Text("History")
                    .bold()
                Spacer()
            }
            .padding(.vertical)
            
            // Display history
            List(viewModel.resultHistory) { result in
                CalculationItemView(result: result)
            }
            .listStyle(.plain)
            
            Spacer()
        }
        .padding()
    }
}
