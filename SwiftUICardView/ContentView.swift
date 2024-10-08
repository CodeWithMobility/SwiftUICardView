//
//  ContentView.swift
//  SwiftUICardView
//
//  Created by Manu Aravind on 08/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 10) {
            // Example 1: A card with default values
            CardView {
                VStack {
                    Text("Default Card")
                        .font(.title)
                        .fontWeight(.bold)
                    Text("This card uses the default values.")
                        .font(.body)
                        .foregroundColor(.gray)
                }
            }
            
            // Example 2: A card with custom values for appearance
            CardView(cornerRadius: 10, backgroundColor: Color.blue, shadowRadius: 10, padding: 30) {
                HStack {
                    Image(systemName: "star.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 40, height: 40)
                        .foregroundColor(.yellow)
                    
                    VStack(alignment: .leading) {
                        Text("Custom Card")
                            .font(.headline)
                            .foregroundColor(.white)
                        Text("This card has custom appearance.")
                            .font(.subheadline)
                            .foregroundColor(.white.opacity(0.8))
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
