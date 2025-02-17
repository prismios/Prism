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
        VStack(alignment: .center, spacing: 0) {
            VStack {
                Spacer()
                PrismShowcaseImages()
                WelcomeHeader()
                VStack(spacing: 20) {
                    PrismButtonColor(
                        title: "Sign Up",
                        action: { if currentStep < 4 { currentStep += 1 } },
                        style: .primary
                    )
                    PrismButton(
                        title: "Log In",
                        action: { },
                        style: .secondary
                    )
                }
            }
            .frame(width: PrismLayout.maxWidth)
        }
        .padding(.vertical, UIScreen.main.bounds.height * 0.06)
        .frame(
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity,
            alignment: .top
        )
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
        .cornerRadius(66)
        .ignoresSafeArea(.all)
    }
}
