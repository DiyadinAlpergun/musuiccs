//
//  ingredient.swift
//  musuiccs
//
//  Created by neodiyadin on 8.12.2024.
//

import Foundation


import Foundation

class IngredientManager {
    static let shared = IngredientManager()
    //private init() {}
    func toggleIngredient(_ ingredient: String) {
        var selectedIngredients = UserDefaults.standard.stringArray(forKey: "selectedIngredients") ?? []
        if selectedIngredients.contains(ingredient) {
            selectedIngredients.removeAll { $0 == ingredient }
        } else {
            selectedIngredients.append(ingredient)
        }
        UserDefaults.standard.set(selectedIngredients, forKey: "selectedIngredients")
    }
    func isIngredientSelected(_ ingredient: String) -> Bool {
        let selectedIngredients = UserDefaults.standard.stringArray(forKey: "selectedIngredients") ?? []
        return selectedIngredients.contains(ingredient)
    }
}
