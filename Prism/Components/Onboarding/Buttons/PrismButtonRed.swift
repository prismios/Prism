//
// PrismButtonRed.swift
// Prism
//
// Created by dull on 2025-02-22.
//

import SwiftUI

struct PrismButtonRed: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            ButtonContent(title: title)
                .frame(maxWidth: .infinity, minHeight: PrismLayout.buttonHeight)
        }
        .buttonStyle(PrismRedButtonStyle())
        .padding(.horizontal, PrismLayout.horizontalPadding)
    }
    
    struct ButtonContent: View {
        let title: String
        
        var body: some View {
            HStack {
                Image(systemName: "bell.fill")
                    .frame(width: PrismLayout.iconSize, height: PrismLayout.iconSize)
                    .foregroundColor(.white)
                    .background(
                        Color(hex: "#FF3B30")
                            .opacity(0.4)
                            .blur(radius: 10)
                    )
                
                Text(title)
                    .prismRedButtonModifier()
                    .background(
                        Color(hex: "#FF3B30")
                            .opacity(0.4)
                            .blur(radius: 10)
                    )
            }
        }
    }
}

struct PrismRedButtonStyle: ButtonStyle {
    private enum Colors {
        static let base = Color(red: 1, green: 0.23, blue: 0.19)
        static let background = Color(red: 0.16, green: 0.16, blue: 0.18)
    }
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .background(Colors.background.opacity(0.75))
            .background(Colors.base.opacity(configuration.isPressed ? 0.5 : 0.75))
            .cornerRadius(PrismLayout.cornerRadius)
            .shadow(color: .black.opacity(0.25), radius: 10, x: 0, y: 4)
            .overlay(
                RoundedRectangle(cornerRadius: PrismLayout.cornerRadius)
                    .inset(by: 0.5)
                    .stroke(Colors.base, lineWidth: 1)
            )
            .overlay(
                RoundedRectangle(cornerRadius: PrismLayout.cornerRadius)
                    .inset(by: 0.5)
                    .stroke(Colors.background.opacity(0.75), lineWidth: 1)
            )
    }
}

struct PrismRedButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(PrismFonts.outfit(size: 20, weight: .semibold))
            .foregroundColor(PrismColors.textPrimary)
    }
}

#Preview {
    PrismButtonRed(title: "Allow Notifications", action: {})
}
