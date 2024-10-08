//
//  CardView.swift
//  SwiftUICardView
//
//  Created by Manu Aravind on 08/10/24.
//

import SwiftUI

struct CardView<Content: View>: View {
    let content: Content
    let cornerRadius: CGFloat
    let backgroundColor: Color
    let shadowRadius: CGFloat
    let padding: CGFloat
    
    // A custom initializer that takes the child content view and other properties
    init(cornerRadius: CGFloat = 20,
         backgroundColor: Color = Color.white,
         shadowRadius: CGFloat = 5,
         padding: CGFloat = 20,
         @ViewBuilder content: () -> Content) {
        self.cornerRadius = cornerRadius
        self.backgroundColor = backgroundColor
        self.shadowRadius = shadowRadius
        self.padding = padding
        self.content = content()
    }
    
    var body: some View {
        ZStack {
            // Card background with dynamic corner radius, background color, and shadow
            RoundedRectangle(cornerRadius: cornerRadius)
                .fill(backgroundColor)
                .shadow(radius: shadowRadius)
            
            // Display the passed child view with dynamic padding
            content
                .padding(padding)
        }
        .frame(width: 300, height: 200) // You can also make the frame size dynamic if needed
    }
}



