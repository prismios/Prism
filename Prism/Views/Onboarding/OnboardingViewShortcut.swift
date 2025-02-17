//
//  OnboardingViewShortcut.swift
//  Prism
//
//  Created by dull on 2025-02-17.
//

import SwiftUI

struct OnboardingViewShortcut: View {
    @Binding var currentStep: Int
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Spacer()
            Text("Install our helper shortcut")
              .font(
                Font.custom("Outfit", size: 30)
                  .weight(.bold)
              )
              .foregroundColor(.white)
              .frame(width: PrismLayout.maxWidth, alignment: .topLeading)
            
            Text("The Prism Helper shortcut is required for Prism tweaks to work. It allows us to perform actions that wouldn’t be allowed without it—such as changing your wallpaper. ")
              .font(
                Font.custom("Outfit", size: 16)
                  .weight(.medium)
              )
              .foregroundColor(.white.opacity(0.9))
              .frame(width: PrismLayout.maxWidth, alignment: .topLeading)
            
            PrismButtonBlue()
        }
        .padding(.top, 90)
    }
}
