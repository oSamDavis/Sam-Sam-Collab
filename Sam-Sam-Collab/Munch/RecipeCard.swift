//
//  RecipeCard.swift
//  Sam-Sam-Collab
//
//  Created by Sam Davis Omekara  on 6/13/23.
//

import SwiftUI

struct RecipeCard: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            Image("food1")
                .resizable()
                .scaledToFill()
                .frame(width: 343, height: 412)
                .overlay(
                    glassOverlay
                    , alignment: .bottom)
            cardTag
        }
        .cornerRadius(12)
    }
}

struct RatingView : View {
    var rating: Int = 3
    
    var body: some View {
        HStack(spacing: 0) {
            
            ForEach(0..<rating, id: \.self) { item in
                Image(systemName: "star.fill")
                    .foregroundColor(Color(uiColor: .secondaryLabel))
            }
            ForEach(rating..<5, id: \.self) { item in
                Image(systemName: "star.fill")
                    .foregroundColor(Color(uiColor: .tertiaryLabel))
            }
            
        }
        .font(.subheadline)
    }
}

struct RecipeCard_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCard()
    }
}


extension RecipeCard {
    var glassOverlay : some View {
        VStack {
            HStack {
                Text("30 Min".uppercased())
                    .font(.subheadline.weight(.semibold))
                    .foregroundColor(Color(uiColor: .secondaryLabel))
                    
                Spacer()
                RatingView(rating: 3)
            }
            
            HStack {
                Text("Chicken & Bell Pepper Fajitas with Guacamole")
                    .font(.title2.weight(.semibold))
                    .foregroundColor(Color(uiColor: .label))
                Spacer()
                Image("tasty")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 32, height: 32)
                    .clipShape(Circle())
                
            }
        }
            .padding()
            .background(.ultraThinMaterial)
        
    }
    
    var cardTag : some View {
        Text("Glutten Free".uppercased())
            .font(.footnote)
            .fontWeight(.semibold)
            .foregroundColor(Color("MunchTextGray"))
            .fontWeight(.medium)
            .padding(4)
            .background(
                RoundedRectangle(cornerRadius: 6)
                    .fill(.white)
            )
            .padding()
    }
}
