//
//  PrismButtonColor.swift
//  Prism
//
//  Created by dull on 2025-02-16.
//

import SwiftUI

struct PrismButtonColor: View {
    let title: String
    let action: () -> Void
    let style: ButtonStyle
    
    enum ButtonStyle {
        case primary
        case secondary
    }
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .background(
                    Color.white.opacity(0.2)
                        .blur(radius: 10)
                )
                .padding(.horizontal)
                .font(PrismFonts.outfit(size: 20, weight: .semibold))
                .frame(maxWidth: .infinity, minHeight: PrismLayout.buttonHeight)
                .foregroundColor(PrismColors.textPrimary)
        }
        .padding(.horizontal, PrismLayout.horizontalPadding)
        .background(Color(red: 0.16, green: 0.16, blue: 0.18).opacity(0.75))
        .cornerRadius(25)
        .shadow(color: .black.opacity(0.25), radius: 10, x: 0, y: 4)
        .background(
            RoundedRectangle(cornerRadius: PrismLayout.cornerRadius)
                .strokeBorder(
                    AngularGradient(
                        gradient: Gradient(stops: PrismColors.buttonGradientStops),
                        center: .center
                    ),
                    lineWidth: PrismLayout.borderWidth
            )
        )
    }
}



