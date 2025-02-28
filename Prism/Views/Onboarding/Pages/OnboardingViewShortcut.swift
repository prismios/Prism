//
// OnboardingViewShortcut.swift
// Prism
//
// Created by dull on 2025-02-17.

import SwiftUI

struct OnboardingViewShortcut: View {
    @Binding var currentStep: Int
    
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            
            ShortcutIcon()
            
            Spacer()
            
            ShortcutTitle()
                .padding(.bottom, 5)
            
            ShortcutDescription()
                .padding(.bottom, 20)
            
            ShortcutActions(currentStep: $currentStep)
        }
        .blueBackground()
    }
    
    struct ShortcutIcon: View {
        var body: some View {
            Image("ShortcutLogo")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 140, height: 140)
                .clipped()
                .cornerRadius(39)
                .overlay(
                    RoundedRectangle(cornerRadius: 39)
                        .inset(by: 1)
                        .stroke(.black, lineWidth: 2)
                )
        }
    }
    
    struct ShortcutTitle: View {
        var body: some View {
            Text("Install our helper shortcut")
                .font(.custom("Outfit", size: 30).bold())
                .foregroundColor(.white)
                .frame(maxWidth: PrismLayout.maxWidth, alignment: .topLeading)
                .padding(.bottom, 5)
        }
    }
    
    struct ShortcutDescription: View {
        var body: some View {
            Text("The Prism Helper shortcut is required for Prism tweaks to work. It allows us to perform actions that wouldn’t be allowed without it—such as changing your wallpaper.")
                .font(.custom("Outfit", size: 16).weight(.medium))
                .foregroundColor(.white.opacity(0.9))
                .frame(maxWidth: PrismLayout.maxWidth, alignment: .topLeading)
        }
    }
    
    struct ShortcutActions: View {
        @Binding var currentStep: Int
        
        var body: some View {
            HStack {
                BackButton {
                    currentStep -= 1
                }
                
                PrismButtonBlue(title: "Get Shortcut") {
                    advanceStep()
                }
            }
        }
        
        private func advanceStep() {
            if currentStep < 4 {
                currentStep += 1
            }
        }
        
        struct BackButton: View {
            let action: () -> Void
            
            var body: some View {
                Button(action: action) {
                    Image(systemName: "arrowshape.turn.up.left.fill")
                        .font(.system(size: 32))
                        .foregroundStyle(.white)
                        .background(
                            Color.black
                                .opacity(0.35)
                                .blur(radius: 10)
                        )
                }
                .frame(width: 70, height: 70)
                .background(Color(red: 0.16, green: 0.16, blue: 0.18).opacity(0.9))
                .background(.white)
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
                .shadow(color: .black.opacity(0.25), radius: 10, x: 0, y: 4)
                .padding(.leading, 18)
            }
        }
    }
}

struct BlueBackgroundModifier: ViewModifier {
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
            .background(.blue)
            .background(PrismColors.background)
            .ignoresSafeArea()
    }
}



#Preview {
    OnboardingViewShortcut(currentStep: .constant(2))
}
