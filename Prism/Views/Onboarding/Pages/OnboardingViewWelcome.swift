//
//  OnboardingViewWelcome.swift
//  Prism
//
//  Created by dull on 2025-02-16.
//

import SwiftUI

struct OnboardingViewWelcome: View {
    @Binding var currentStep: Int
    
    var body: some View {
        VStack {
            Spacer()
            
            PrismShowcaseImages()
            WelcomeHeader()
            
            VStack {
                PrismButtonColor(title: "Sign Up", action: {
                    if currentStep < 4 { currentStep += 1 }
                }, shouldHaveCheveron: false)
                
                PrismButton(title: "Log In") {
                    
                }
                .padding(.horizontal, PrismLayout.horizontalPadding)
            }
            .frame(width: PrismLayout.maxWidth)
        }
        .rainbowBackground()
    }
}

struct RainbowBackgroundModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(.vertical, 40)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .background(
                LinearGradient(
                    gradient: Gradient(stops: PrismColors.rainbowGradientStops),
                    startPoint: .top,
                    endPoint: .bottom
                )
            )
            .background(
                EllipticalGradient(
                    gradient: Gradient(colors: PrismColors.elipticalGradientColors),
                    center: UnitPoint(x: 0.5, y: 1)
                )
            )
            .ignoresSafeArea()
    }
}
