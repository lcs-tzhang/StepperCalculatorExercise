//
//  ContentView.swift
//  StepperCalculatorExercise
//
//  Created by xinyu zhang on 2025-02-12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            AdditionView()
                .tabItem {
                    Image(systemName: "plus")
                    Text("Plus")
                }
            SubtractionView()
                .tabItem {
                    Image(systemName: "minus")
                    Text("Minus")
                }
            MultiplicationView()
                .tabItem {
                    Image(systemName: "xmark")
                    Text("Multiply")
                }
            DivisionView()
                .tabItem {
                    Image(systemName: "divide")
                    Text("Divide")
                }
        }
    }
}

#Preview {
    ContentView()
}
