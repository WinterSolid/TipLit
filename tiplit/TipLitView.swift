//
//  ContentView.swift
//  tiplit
//
//  Created by Zak Tan on 6/30/25.
//

import SwiftUI

struct TipLitView: View {
  
  // view property wrappers
  @State private var checkAmount: Double = 0.0
  @State private var numberOfPeople: Int = 0
  @State private var tipPercentage: Int = 20
  @FocusState private var amountIsFocused: Bool
  
  // variables and computational calculations
  let tipPercentageValues: [Int] = [10, 15, 20, 25, 0]
  var totalPerPerson: Double {
      TipCalculator.amountPerPerson(
          checkAmount: checkAmount,
          numberOfPeople: numberOfPeople,
          tipPercentage: tipPercentage
      )
  }
  
    var body: some View {
        Text("Stuff will be here")
    }
}

#Preview {
    TipLitView()
}
