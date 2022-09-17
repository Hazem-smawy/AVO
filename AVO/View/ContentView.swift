//
//  ContentView.swift
//  AVO
//
//  Created by hazem smawy on 9/17/22.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Property
    let headers:[Header] = headersData
    
    // MARK: - Body
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment:.center ,spacing: 20) {
                // MARK: - Header
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(headers) {header in
                            HeaderView(header: header)
                        }
                    }//:HStack
                }//:Horizontal scroll
                
               // MARK: - Dishes
                Text("Avocado Dishes")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                DishesView()
                    .frame(maxWidth:460)
                
                
                // MARK: - Footer
                VStack (alignment: .center, spacing: 20) {
                    Text("All About Avocados")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                        
                    
                    Text("Everything you wanted to know about avocados but were too afraid to ask. ")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                }//:VStack in
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
            }//:VStack out
        }
        .edgesIgnoringSafeArea(.all)
        .padding(0)
    }
}
struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.title, design: .serif))
            .foregroundColor(Color("ColorGreenAdaptive"))
            .padding(8)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
