//
//  NutrientsCard.swift
//  Sam-Sam-Collab
//
//  Created by Sam Davis Omekara  on 6/8/23.
//

import SwiftUI

struct NutrientsCard: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 40) {
            HStack {
                Label("Carbohydrates", systemImage: "flame.fill")
                    .foregroundColor(Color(uiColor: .systemGreen))
                    .fontWeight(.medium)
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .foregroundColor(Color(uiColor: .systemGray))
            }
            
            HStack(alignment: .center, spacing: 0) {
                Text("20")
                    .font(.system(.largeTitle, design: .rounded, weight: .medium))
                Text("mg")
                    .font(.body)
                    .fontWeight(.medium)
                    .foregroundColor(Color(uiColor: .systemGray))
                    .padding(.top, 10)
            }
        
        }
        .padding(.horizontal, 18)
        .padding(.vertical, 12)
//        .background(Color(uiColor: .systemBackground))
        .background(.thinMaterial)
        .cornerRadius(10)
        
        
    }
}

struct NutrientsCard_Previews: PreviewProvider {
    static var previews: some View {
        NutrientsCard()
//            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
