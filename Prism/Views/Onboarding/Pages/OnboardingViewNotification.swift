//
// OnboardingViewNotification.swift
//
// Prism
// Created by dull on 2025-02-22.
//

import SwiftUI

struct OnboardingViewNotification: View {
    @Binding var currentStep: Int
    
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            
            NotificationIcon()
            
            Spacer()
            
            NotificationTitle()
                .padding(.bottom, 5)
            
            NotificationDescription()
                .padding(.bottom, 20)
            
            NotificationActions(currentStep: $currentStep)
        }
        .redBackground()
    }
    
    struct NotificationIcon: View {
        var body: some View {
            Image("prismNotificationExample")
        }
    }
    
    struct NotificationTitle: View {
        var body: some View {
            Text("Want to be Notified?")
                .font(.custom("Outfit", size: 30).bold())
                .foregroundColor(.white)
                .frame(maxWidth: PrismLayout.maxWidth, alignment: .topLeading)
                .padding(.bottom, 5)
        }
    }
    
    struct NotificationDescription: View {
        var body: some View {
            Text("Be notified when it most counts—like when tweaks are due for an update, or your favorite creator makes something new! Be the first to find out.")
                .font(.custom("Outfit", size: 16).weight(.medium))
                .foregroundColor(.white.opacity(0.9))
                .frame(maxWidth: PrismLayout.maxWidth, alignment: .topLeading)
        }
    }
    
    struct NotificationActions: View {
        @Binding var currentStep: Int
        
        var body: some View {
            VStack {
                PrismButtonRed(title: "Allow Notifications") {
                    advanceStep()
                }
                
                PrismButton(title: "Skip For Now") {
                    advanceStep()
                }
            }
        }
        
        private func advanceStep() {
            if currentStep < 4 {
                currentStep += 1
            }
        }
    }
}

struct RedBackgroundModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(.vertical, 40)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .background(
                LinearGradient(
                    gradient: Gradient(stops: PrismColors.blueGradientStops),
                    startPoint: .init(x: 0.5, y: 0),
                    endPoint: .init(x: 0.5, y: 1)
                )
            )
            .background(Color.red)
            .background(PrismColors.background)
            .ignoresSafeArea()
    }
}

#Preview {
    OnboardingViewNotification(currentStep: .constant(2))
}
