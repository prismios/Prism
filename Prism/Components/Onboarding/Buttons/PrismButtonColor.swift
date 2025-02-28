//
// PrismButtonColor.swift
// Prism
//
// Created by dull on 2025-02-16.
//

import SwiftUI

struct PrismButtonColor: View {
    let title: String
    let action: () -> Void
    var shouldHaveCheveron: Bool
    
    var body: some View {
        Button(action: action) {
            ButtonContent(title: title, shouldHaveCheveron: shouldHaveCheveron)
        }
        .buttonStyle(PrismColorButtonStyle())
    }
    
    struct ButtonContent: View {
        let title: String
        let shouldHaveCheveron: Bool
        
        var body: some View {
            HStack {
                if (shouldHaveCheveron) {
                    Text(title)
                        .background(
                            Color.white
                                .opacity(0.2)
                                .blur(radius: 10)
                        )
                        .font(PrismFonts.outfit(size: 20, weight: .semibold))
                        .frame(minHeight: PrismLayout.buttonHeight)
                        
                    
                    Spacer()
                    
                    Image(systemName: "chevron.right")
                        .background(
                            Color.white
                                .opacity(0.2)
                                .blur(radius: 10)
                        )
                } else {
                    Text(title)
                        .background(
                            Color.white
                                .opacity(0.2)
                                .blur(radius: 10)
                        )
                        .prismColorButtonModifier()
                }
            }
        }
    }
}

struct PrismColorButtonStyle: ButtonStyle {
    private enum Colors {
        static let background = Color(red: 0.16, green: 0.16, blue: 0.18)
    }
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.horizontal, PrismLayout.horizontalPadding)
            .background(Colors.background.opacity(configuration.isPressed ? 0.5 : 0.75))
            .cornerRadius(PrismLayout.cornerRadius)
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

struct PrismColorButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(PrismFonts.outfit(size: 20, weight: .semibold))
            .frame(maxWidth: .infinity, minHeight: PrismLayout.buttonHeight)
            .foregroundColor(PrismColors.textPrimary)
    }
}


#Preview {
    PrismButtonColor(title: "Get Started", action: {}, shouldHaveCheveron: true)
    PrismButtonColor(title: "Sign Up", action: {}, shouldHaveCheveron: false)
}
