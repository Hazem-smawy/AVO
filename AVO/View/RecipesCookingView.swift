//
//  RecipesCookingView.swift
//  AVO
//
//  Created by hazem smawy on 9/18/22.
//

import SwiftUI

struct RecipesCookingView: View {
    // MARK: - Property
    
    var recipe: Recipe
    
    // MARK: - Body
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "person.2")
                Text("Serves: \(recipe.serves)")
            }
            
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "clock")
                Text("Prep: \(recipe.preparation)")
            }
            
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "flame")
                Text("Cooking: \(recipe.cooking)")
            }
        }//:HStack out
        .font(.footnote)
        .foregroundColor(.gray)
    }
}

struct RecipesCookingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipesCookingView(recipe: recipesData[0])
    }
}
