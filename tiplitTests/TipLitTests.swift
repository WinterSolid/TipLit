//
//  TipLitTests.swift
//  TipLitTests
//
//  Created by Zak Tan on 6/30/25.
//
import Testing
import SwiftUI
@testable import tiplit


struct TipCalculatorTests {

    @Test("20 % tip on $100 split 4 ways = $30 each")
    func twentyPercentTip() {
        let result = TipCalculator.amountPerPerson(
            checkAmount: 100,
            numberOfPeople: 4,
            tipPercentage: 20
        )
      #expect(result == 30)
    }

    @Test("Zero people returns 0")
    func zeroPeople() {
        let result = TipCalculator.amountPerPerson(
            checkAmount: 50,
            numberOfPeople: 0,
            tipPercentage: 10
        )
        #expect(result == 0)
    }
}


