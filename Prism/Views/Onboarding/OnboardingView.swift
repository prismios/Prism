//
//  OnboardingView.swift
//  Prism
//
//  Created by dull on 2025-02-16.
//

import SwiftUI

struct OnboardingView: View {
    @State var currentStep: Int = 1
    
    var body: some View {
        VStack {
            ProgressBar(currentStep: $currentStep)
            switch currentStep {
            case 1:
                OnboardingViewWelcome(currentStep: $currentStep)
            case 2:
                OnboardingViewShortcut(currentStep: $currentStep)
            case 3:
                OnboardingViewNotification(currentStep: $currentStep)
            case 4:
                OnboardingViewDone(currentStep: $currentStep)
            default:
                Text("Onboarding Complete")
            }
        }
        .background(PrismColors.background, ignoresSafeAreaEdges: .all)
    }
}

#Preview {
    OnboardingView()
}
