import Foundation

struct CalculationResult: Identifiable {
    let id = UUID()
    let firstNumber: Int
    let secondNumber: Int
    let result: Int
    let symbol: String
}
