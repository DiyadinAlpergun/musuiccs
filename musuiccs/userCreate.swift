//
//  userCreate.swift
//  musuiccs
//
//  Created by neodiyadin on 8.12.2024.
//

import SwiftUI

struct userCreate: View {
    var body: some View {
        NavigationView {
            List {
                Text("Create Account").font(.largeTitle)
                TextField("Username", text: .constant(""))
                TextField("Email", text: .constant(""))
                TextField("Password", text: .constant(""))
                Button("Create Account") {
                    NavigationLink(destination: ContentView()) {
                        
                    }
                }
            }
        }
        
            
    }
}

#Preview {
    userCreate()
}
