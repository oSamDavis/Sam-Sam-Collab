//
//  MacrosList.swift
//  Sam-Sam-Collab
//
//  Created by Sam Davis Omekara  on 6/11/23.
//

import SwiftUI

struct MacrosList: View {
    var body: some View {
        VStack(spacing: 4) {
            ForEach(0 ..< 3) { item in
                MacrosCard()
            }
        }
        .cornerRadius(10)
        .padding()
    }
}

struct MacrosList_Previews: PreviewProvider {
    static var previews: some View {
        MacrosList()
//            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
  
    }
}
