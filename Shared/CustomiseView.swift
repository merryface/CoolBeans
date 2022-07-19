//
//  CustomiseView.swift
//  CoolBeans
//
//  Created by Tarik Merrylees on 19/07/2022.
//

import SwiftUI

struct CustomiseView: View {
    let drink: Drink
    
    @State private var size = 0
    @State private var isDecaf = false
    
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
                
                Toggle("Decaf", isOn: $isDecaf)
            }
            
            Section("Estimates"){
                Text("**Caffeine:** \(caffeine)mg")
                Text("**Calories:** \(calories)kcal")
            }
        }
    }
}

struct CustomiseView_Previews: PreviewProvider {
    static var previews: some View {
        CustomiseView(drink: Drink.example)
    }
}
