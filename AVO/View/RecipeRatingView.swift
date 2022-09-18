//
//  RecipeRatingView.swift
//  AVO
//
//  Created by hazem smawy on 9/18/22.
//

import SwiftUI

struct RecipeRatingView: View {
    // MARK: - Property
    var recipe: Recipe
    var body: some View {
        HStack(alignment:.center , spacing:  5) {
            ForEach(1...(recipe.rating) ,id : \.self) { _ in
                
                Image(systemName: "star.fill")
                    .font(.body)
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct RecipeRatingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeRatingView(recipe: recipesData[0])
    }
}
