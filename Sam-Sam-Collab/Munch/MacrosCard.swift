//
//  MacrosCard.swift
//  Sam-Sam-Collab
//
//  Created by Sam Davis Omekara  on 6/11/23.
//

import SwiftUI

struct MacrosCard: View {
    var body: some View {
        VStack(alignment: .leading) {
            imageAndTitle
            macrosInfo
        }
        .padding(.vertical, 8)
        .padding(.horizontal, 16)
        .background(Color(uiColor: .secondarySystemBackground))
        
    }
}

struct MacrosCard_Previews: PreviewProvider {
    static var previews: some View {
        MacrosCard()
            .previewLayout(.sizeThatFits)
    }
}

extension MacrosCard {
    var imageAndTitle : some View {
        HStack {
            Image("food1")
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
                .clipShape(RoundedRectangle(cornerRadius: 4, style: .continuous))
            
            Text("Chicken & Bell Pepper Fajitas with Guacamole")
                .font(.body)
                .foregroundColor(.primary)
                .frame(maxWidth: .infinity, alignment: .leading)
     
        }
        .padding(.vertical)
    }
    
    var macrosInfo : some View {
        HStack {
            Label("14kg", systemImage: "leaf.fill")
            Spacer()
            Label("14kg", systemImage: "rectangle.3.group.fill")
            Spacer()
            Label("14kg", systemImage: "drop.fill")
            
        }
        .foregroundColor(Color(uiColor: .secondaryLabel))
    }
}
