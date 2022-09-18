//
//  RecipeCardView.swift
//  AVO
//
//  Created by hazem smawy on 9/18/22.
//

import SwiftUI

struct RecipeCardView: View {
    // MARK: - Property
    var recipe: Recipe
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    @State private var showModal: Bool = false
    // MARK: - body
    var body: some View {
        VStack(alignment: .leading, spacing:  0) {
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay(
                    HStack {
                        Spacer()
                        VStack {
                            Image(systemName: "bookmark")
                            .font(.title.weight(.light))
                            .foregroundColor(.white)
                            .imageScale(.small)
                            .shadow(color: Color("ColorBlackTransparent"), radius: 2, x: 0, y: 0)
                            .padding(.trailing, 20)
                            .padding(.top, 22)
                            Spacer()
                        }//:VStack
                    }
                )
            
            VStack(alignment: .leading, spacing: 12) {
                //title
                Text(recipe.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .lineLimit(1)
                
                //headline
                Text(recipe.headline)
                    .font(.system(.body, design: .serif))
                    .foregroundColor(.gray)
                    .italic()
                //rates
                RecipeRatingView(recipe: recipe)
                //cooking
                RecipesCookingView(recipe: recipe)
                
            }
            .padding()
            .padding(.bottom, 12)
        }//:VStack
        .background(.white)
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTransparentLight"),radius: 8,x:0, y: 0)
        .onTapGesture {
            hapticImpact.impactOccurred()
            showModal = true
        }
        .sheet(isPresented: $showModal) {
            RecipeDetailView(recipe: recipe)
        }
    }
}

struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: recipesData[0])
            .previewLayout(.sizeThatFits)
    }
}
