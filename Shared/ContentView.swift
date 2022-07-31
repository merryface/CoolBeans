//
//  ContentView.swift
//  Shared
//
//  Created by Tarik Merrylees on 19/07/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var menu = Menu()
    @StateObject var history = History()
    
    var body: some View {
        MenuView()
            .environmentObject(menu)
            .environmentObject(history)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
