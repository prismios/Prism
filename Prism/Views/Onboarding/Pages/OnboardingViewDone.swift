//
//  OnboardingViewDone.swift
//  Prism
//
//  Created by dull on 2025-02-22.
//

import SwiftUI

struct OnboardingViewDone: View {
    @Binding var currentStep: Int
    
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            
            DoneIcon()
            
            Spacer()
            
            DoneTitle()
                .padding(.bottom, 5)
            
            DoneDescription()
                .padding(.bottom, 20)
            
            DoneActions(currentStep: $currentStep)
        }
        .rainbowBackground()
    }
    
    struct DoneIcon: View {
        var body: some View {
            Image("prismDoneImage")
        }
    }
    
    struct DoneTitle: View {
        var body: some View {
            Text("You're all set!")
                .font(.custom("Outfit", size: 30).bold())
                .foregroundColor(.white)
                .frame(maxWidth: PrismLayout.maxWidth, alignment: .topLeading)
                .padding(.bottom, 5)
        }
    }
    
    struct DoneDescription: View {
        var body: some View {
            Text("Enjoy using Prism! If you have any issues, let us know at our Discord, or check out our other socials!")
                .font(.custom("Outfit", size: 16).weight(.medium))
                .foregroundColor(.white.opacity(0.9))
                .frame(maxWidth: PrismLayout.maxWidth, alignment: .topLeading)
        }
    }
    
    struct DoneActions: View {
        @Binding var currentStep: Int
        @Environment(\.dismiss) var dismiss
        @State var isSocialSheetPresented: Bool = false
        
        var body: some View {
            HStack {
                PlatformButton(action: {     isSocialSheetPresented = true
                    }
                )
                .sheet(isPresented: $isSocialSheetPresented){
                        Text("Social Sheet Placeholder")
                        .presentationDetents([.medium])
                    }
               
                
                
                PrismButtonColor(title: "Get Started", action: {
                    dismiss()
                
                }, shouldHaveCheveron: true)
                .padding(.horizontal, PrismLayout.horizontalPadding)
            }
        }
        
        struct PlatformButton: View {
            let action: () -> Void
            
            var body: some View {
                Button(action: action) {
                    Image(systemName: "person.2.fill")
                        .foregroundStyle(.white)
                        .font(.system(size: 32))
                        .background(
                            Color.green
                                .opacity(0.35)
                                .blur(radius: 5)
                        )
                }
                .frame(width: 70, height: 70)
                .background(Color(red: 0.16, green: 0.16, blue: 0.18).opacity(0.75))
                .background(Color(red: 0.2, green: 0.78, blue: 0.35))
                .cornerRadius(PrismLayout.cornerRadius)
                .overlay(
                    RoundedRectangle(cornerRadius: PrismLayout.cornerRadius)
                        .inset(by: 0.5)
                        .stroke(.white, lineWidth: 1)
                )
                .overlay(
                    RoundedRectangle(cornerRadius: PrismLayout.cornerRadius)
                        .inset(by: 0.5)
                        .stroke(Color(red: 0.16, green: 0.16, blue: 0.18).opacity(0.9), lineWidth: 1)
                )
                .padding(.leading, 18)
            }
        }
        
        private func advanceStep() {
            if currentStep < 4 {
                currentStep += 1
            }
        }
    }
}

#Preview {
    OnboardingViewDone(currentStep: .constant(2))
}
