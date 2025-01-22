//
//  paptircem.swift
//  musuiccs
//
//  Created by neodiyadin on 8.12.2024.
//

import SwiftUI


struct paptircem: View {
    
    
    private var olanlaolunmaz: Binding<Bool> {
        Binding(
            get: {
                // "yumurta" durumunu IngredientManager'dan al
                IngredientManager.shared.isIngredientSelected("olanlaolunmaz")
            },
            set: { newValue in
                // Anahtar değiştirildiğinde malzemeyi değiştir
                IngredientManager.shared.toggleIngredient("olanlaolunmaz")
            }
        )
    }// olanla olunmaz
    private var sonbirdefa: Binding<Bool> {
        Binding(
            get: {
                // "yumurta" durumunu IngredientManager'dan al
                IngredientManager.shared.isIngredientSelected("sonbirdefa")
            },
            set: { newValue in
                // Anahtar değiştirildiğinde malzemeyi değiştir
                IngredientManager.shared.toggleIngredient("sonbirdefa")
            }
        )
    }// son bir defa
    private var olsabiyolu: Binding<Bool> {
        Binding(
            get: {
                // "yumurta" durumunu IngredientManager'dan al
                IngredientManager.shared.isIngredientSelected("olsabiyolu")
            },
            set: { newValue in
                // Anahtar değiştirildiğinde malzemeyi değiştir
                IngredientManager.shared.toggleIngredient("olsabiyolu")
            }
        )
    }// olsa bi yolu
    
    var body: some View {
        
        List {
            HStack {
                Image("papti")
                    .resizable()
                    .frame(width: 64, height: 64)
                
                Toggle(isOn: olanlaolunmaz) {
                    VStack(alignment: .leading) {
                        Text("olanla olunmaz")
                            .font(.headline)
                            .textScale(.default)
                        Text("album - 12")
                            .foregroundStyle(.secondary)
                        Text("26.11.2021")
                            .foregroundStyle(.tertiary)
                    }
                }
            } // olanla olunmaz
            HStack {
                Image("sonbirdefa")
                    .resizable()
                    .frame(width: 64, height: 64)
                
                Toggle(isOn: sonbirdefa) {
                    VStack(alignment: .leading) {
                        Text("Sonbir defa")
                            .font(.headline)
                            .textScale(.default)
                        Text("album - 4")
                            .foregroundStyle(.secondary)
                        Text("13.01.2018")
                            .foregroundStyle(.tertiary)
                    }
                }
            } // son bir defa
            HStack {
                Image("olsabiyolu")
                    .resizable()
                    .frame(width: 64, height: 64)
                
                Toggle(isOn: olsabiyolu) {
                    VStack(alignment: .leading) {
                        Text("Olsa bi' yolu")
                            .font(.headline)
                            .textScale(.default)
                        Text("album - 16")
                            .foregroundStyle(.secondary)
                        Text("23.04.2016")
                            .foregroundStyle(.tertiary)
                    }
                }
            } // olsa bi yolu
            
        }
    }
}

#Preview {
    paptircem()
}




