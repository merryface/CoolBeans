//
//  CustomiseView.swift
//  CoolBeans
//
//  Created by Tarik Merrylees on 19/07/2022.
//

import SwiftUI

struct CustomiseView: View {
    let drink: Drink
    
    @EnvironmentObject var menu: Menu
    
    @State private var size = 0
    @State private var isDecaf = false
    @State private var extraShots = 0
    @State private var milk = ConfigurationOption.none
    @State private var syrup = ConfigurationOption.none
    
    let sizeOptions = ["small", "medium", "large"]
    
    var caffeine: Int {
        100
    }
    
    var calories: Int {
        100
    }
    
    var body: some View {
        Form {
            Section("Basic options") {
                Picker("Size", selection: $size) {
                    ForEach(sizeOptions.indices) { index in
                        Text(sizeOptions[index])
                    }
                }
                .pickerStyle(.segmented)
                
                if drink.coffeeBased {
                    Stepper("Extra shots: \(extraShots)",
                        value: $extraShots, in: 0...8)
                }
                
                Toggle("Decaf", isOn: $isDecaf)
            }
            
            Section("Customisations") {
                Picker("Milk", selection: $milk) {
                    ForEach(menu.milkOptions) { option in
                        Text(option.name)
                            .tag(option)
                    }
                }
            }
            
            if drink.coffeeBased {
                Picker("Syrup", selection: $syrup) {
                    ForEach(menu.syrupOptions) { option in
                        Text(option.name)
                            .tag(option)
                    }
                }
            }
            
            Section("Estimates"){
                Text("**Caffeine:** \(caffeine)mg")
                Text("**Calories:** \(calories)kcal")
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle(drink.name)
    }
}

struct CustomiseView_Previews: PreviewProvider {
    static var previews: some View {
        CustomiseView(drink: Drink.example)
    }
}
