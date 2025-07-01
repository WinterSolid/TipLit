//
//  TipCalculator.swift
//  tiplit
//
//  Created by Zak Tanks on 6/30/25.
// For Testing
struct TipCalculator {
    static func amountPerPerson(checkAmount: Double,
                                numberOfPeople: Int,
                                tipPercentage: Int) -> Double {

        guard numberOfPeople > 0 else { return 0 }   // prevents NaN

        let tipTotal   = checkAmount * Double(tipPercentage) / 100
        let finalTotal = checkAmount + tipTotal
        return finalTotal / Double(numberOfPeople)
    }
}

