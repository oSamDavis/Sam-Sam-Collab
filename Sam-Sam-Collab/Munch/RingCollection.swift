//
//  RingCollection.swift
//  Sam-Sam-Collab
//
//  Created by Sam Davis Omekara  on 6/12/23.
//

import SwiftUI

struct RingCollection: View {
    var body: some View {
        HStack(spacing: 20) {
            RingCard(name: "Carbs", progress: 0.45, image: "leaf.fill")
            RingCard(name: "Protein", progress: 0.58, image: "rectangle.3.group.fill")
            RingCard(name: "Fat", progress: 0.29, image: "drop.fill")
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(Color(.secondarySystemBackground))
    }
}

struct RingCollection_Previews: PreviewProvider {
    static var previews: some View {
        RingCollection()
    }
}
