//
//  RingCard.swift
//  Sam-Sam-Collab
//
//  Created by Sam Davis Omekara  on 6/12/23.
//

import SwiftUI

struct RingCard: View {
    
    var name: String
    var progress: Double
    var image: String
    
    var body: some View {
        VStack(spacing: 10) {
            ringCircle
            Image(systemName: image)
                .frame(width: 15, height: 15)
        }
        .foregroundColor(Color(.secondaryLabel))
    }
}

struct Ring_Previews: PreviewProvider {
    static var previews: some View {
        RingCard(name: "Carbs", progress: 0.25, image: "leaf.fill")
    }
}


extension RingCard {
    
    var ringCircle: some View {
        ZStack {
            Circle()
                .stroke(Color("MunchGray"), lineWidth: 20)
                .frame(width: 80, height: 80)

            Circle()
                .trim(from: 0, to: progress) // trim your shape, 1/2 or so
                .stroke(Color(.systemGreen), style: StrokeStyle(lineWidth: 20, lineCap: .round, lineJoin: .round))
                .frame(width: 80, height: 80)
            
            VStack {
                Text(name)
                    .font(.footnote)
                    .fontWeight(.semibold)
                Text("14 kg left")
                    .font(.caption2)
            }
        }
        .frame(width: 100, height: 100)
    }
    
}
