//
//  MenuView.swift
//  CoolBeans
//
//  Created by Tarik Merrylees on 19/07/2022.
//

import SwiftUI

struct MenuView: View {
    @EnvironmentObject var menu: Menu
    
    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(menu.sections) { section in
                        Section {
                            ForEach(section.drinks) { drink in
                                VStack {
                                    Text(drink.name)
                                }
                                .padding(.bottom)
                            }
                        }
                    }
                }
                .padding(.horizontal)
            }
            .navigationTitle("Add Drink")
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
            .environmentObject(Menu())
    }
}
