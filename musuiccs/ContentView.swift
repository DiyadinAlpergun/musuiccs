//
//  ContentView.swift
//  musuiccs
//
//  Created by neodiyadin on 8.12.2024.
//

import SwiftUI



struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink (destination: paptircem()) {
                    HStack {
                        Image("pap")
                            .resizable()
                            .frame(width: 64, height: 64)
                        Text("Papircem")
                        
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
