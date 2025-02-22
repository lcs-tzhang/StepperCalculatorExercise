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
    @State var viewModel = CalculationViewModel()
    
    var result: Int {
        return operation(firstNumber, secondNumber)
    }
    
    var body: some View {
        VStack {
            
            
            Spacer()
            
            VStack(alignment: .leading) {
                Text("select first number")
                    .font(.headline)
                HStack {
                    Text("\(firstNumber)")
                        .font(.system(size: 64))
                    Spacer()
                    Stepper("", value: $firstNumber)
                }
            }
            
            Text(symbol)
                .font(.system(size: 64))
                .padding()
            
            Spacer()
            
            VStack(alignment: .leading) {
                Text("select second number")
                    .font(.headline)
                HStack {
                    Text("\(secondNumber)")
                        .font(.system(size: 64))
                    Spacer()
                    Stepper("", value: $secondNumber)
                }
                
            }
            Spacer()
            
            Text("\(result)")
                .font(.system(size: 96))
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.trailing)
                .padding()
            
            Spacer()
        }
        .padding()
        
        Button {
            viewModel.saveResult(firstNumber: firstNumber, secondNumber: secondNumber, result: operation(firstNumber, secondNumber), symbol: symbol)
        } label: {
            Text("Save")
        }
        .buttonStyle(.borderedProminent)
        .padding(.bottom)
        
        
    }
}



