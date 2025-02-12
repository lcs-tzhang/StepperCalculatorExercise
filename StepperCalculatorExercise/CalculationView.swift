//
//  calculationView.swift
//  StepperCalculatorExercise
//
//  Created by xinyu zhang on 2025-02-12.
//

import SwiftUI

struct CalculationView: View {
    let operation:(Int, Int) -> Int
    let symbol: String
    
    @State var firstNumber: Int = 1
    @State var secondNumber: Int = 1
    
    var result: Int {
        return operation(firstNumber, secondNumber)
    }
    
    var body: some View {
        VStack {
            Spacer()
            
            HStack(alignment: .top) {
                Text("\(firstNumber)")
                    .font(.system(size: 96))
                
                Text(symbol)
                    .font(.system(size: 44))
                
                Text("\(secondNumber)")
                    .font(.system(size: 96))
                
                Text("=")
                    .font(.system(size: 96))
                
                Text("\(result)")
                    .font(.system(size: 96))
            }
            
            Stepper(value: $firstNumber) {
                Text("select first number")
            }
            
            Stepper(value: $secondNumber) {
                Text("select second number")
            }
            
            Spacer()
        }
        .padding()
    }
}


