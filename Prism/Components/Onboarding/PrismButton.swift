//
//  PrismButton.swift
//  Prism
//
//  Created by dull on 2025-02-16.
//

import SwiftUI

struct PrismButton: View {
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
                .font(PrismFonts.outfit(size: 20, weight: .semibold))
                .frame(maxWidth: .infinity, minHeight: PrismLayout.buttonHeight)
                .foregroundColor(PrismColors.textPrimary)
        }
        .padding(.horizontal, PrismLayout.horizontalPadding)
    }
}

