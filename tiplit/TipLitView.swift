//
//  ContentView.swift
//  tiplit
//
//  Created by Zak Tan on 6/30/25.
//

import SwiftUI

struct TipLitView: View {
  
  // MARK: - User input
  @State private var checkAmount: Double = 0
  @State private var numberOfPeople: Int = 2        // 2–19 people
  @State private var tipPercentage: Int = 20        // default 20 %
  @FocusState private var amountIsFocused: Bool
  
  // MARK: - Constants
  private let tipPercentageValues = [8, 10, 15, 18, 20, 25]
  
  // MARK: - Computed values
  private var tipTotal: Double {
    checkAmount * Double(tipPercentage) / 100
  }
  
  private var amountPerPerson: Double {
    return ((checkAmount + tipTotal) / Double(numberOfPeople + 2))
    
  }
  
  // MARK: - UI
  var body: some View {
    NavigationStack {
      Form {
        Section {
          TextField("Amount",
                    value: $checkAmount,
                    format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
          .keyboardType(.decimalPad)
          .focused($amountIsFocused)
          
          Picker("How many people", selection: $numberOfPeople) {
            ForEach(2..<20) { Text("\($0)") }
          }
          .pickerStyle(.navigationLink)
        }
        
        Section("Tip percentage") {
          Picker("Tip percent", selection: $tipPercentage) {
            ForEach(tipPercentageValues, id: \.self) { value in
              Text("\(value, format: .percent)")
            }
          }
          .pickerStyle(.segmented)
        }
        
        Section("Tip amount") {
          Text(tipTotal,
               format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
        }
        
        Section("Amount per person") {
          if amountPerPerson > 0 {
            Text(amountPerPerson,
                 format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
          } else {
            Text("– – – – –").foregroundStyle(.gray)
          }
        }
      }
      .navigationTitle("TipLit")
      .navigationBarTitleDisplayMode(.large)
      .toolbar {
        if amountIsFocused {
          Button("Done") { amountIsFocused = false }
        }
      }
    }
  }
}




#Preview {
  TipLitView()
}

