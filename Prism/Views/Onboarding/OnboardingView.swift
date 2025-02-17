//
//  OnboardingView.swift
//  Prism
//
//  Created by dull on 2025-02-16.
//

import SwiftUI

// MARK: - Onboarding Content
struct OnboardingContent {
    let title: String
    let content: AnyView
}

// MARK: - Onboarding View
struct OnboardingView: View {
    @State var currentStep: Int = 1
    
    var steps: [OnboardingContent] {
        [
            OnboardingContent(
                title: "Welcome",
                content: AnyView(OnboardingViewWelcome(currentStep: $currentStep))
            ),
            OnboardingContent(
                title: "Shortcut",
                content: AnyView(OnboardingViewShortcut(currentStep: $currentStep))
            ),
            OnboardingContent(
                title: "Welcome",
                content: AnyView(OnboardingViewWelcome(currentStep: $currentStep))
            ),
            OnboardingContent(
                title: "Welcome",
                content: AnyView(OnboardingViewWelcome(currentStep: $currentStep))
            )
        ]
    }
    
    var body: some View {
        VStack {
            ProgressBar(currentStep: $currentStep)
            steps[currentStep - 1].content
        }
    }
}

#Preview {
    OnboardingView()
}
