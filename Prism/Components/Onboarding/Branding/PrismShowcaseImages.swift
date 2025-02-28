//
//  PrismShowcaseImages.swift
//  Prism
//
//  Created by dull on 2025-02-17.
//

import SwiftUI

struct PrismShowcaseImages: View {
    var body: some View {
        HStack(spacing: 30) {
            Image("showcaseImage2")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 128, height: 278)
                .rotationEffect(.degrees(-2))
                .blur(radius: 2)
                .opacity(0.75)
            
            Image("showcaseImage1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 138, height: 300)
                .rotationEffect(.degrees(2))
            
            Image("showcaseImage2")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 128, height: 278)
                .rotationEffect(.degrees(1.5))
                .blur(radius: 2)
                .opacity(0.75)
        }
    }
}
