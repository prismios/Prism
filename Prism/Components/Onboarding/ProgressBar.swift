//
//  ProgressBar.swift
//  Prism
//
//  Created by dull on 2025-02-16.
//

import SwiftUI

struct ProgressBar: View {
    @Binding var currentStep: Int
    
    private func isActive(_ step: Int) -> Bool {
        step < currentStep
    }
    
    var body: some View {
        HStack(spacing: 4) {
            // Step 1
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundStyle(isActive(0) ? PrismColors.progressBarPrimary : PrismColors.progressBarSecondary)
                .animation(.easeInOut(duration: 0.3), value: currentStep)
            
            // Line 1
            Rectangle()
                .fill(isActive(1) ? PrismColors.progressBarPrimary : PrismColors.progressBarSecondary)
                .frame(width: 80, height: 2)
                .animation(.easeInOut(duration: 0.3), value: currentStep)
            
            // Step 2
            Image(systemName: "square.2.layers.3d.top.filled")
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundStyle(isActive(1) ? PrismColors.progressBarPrimary : PrismColors.progressBarSecondary)
                .animation(.easeInOut(duration: 0.3), value: currentStep)
            
            // Line 2
            Rectangle()
                .fill(isActive(2) ? PrismColors.progressBarPrimary : PrismColors.progressBarSecondary)
                .frame(width: 80, height: 2)
                .animation(.easeInOut(duration: 0.3), value: currentStep)
            
            // Step 3
            Image(systemName: "bell.circle.fill")
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundStyle(isActive(2) ? PrismColors.progressBarPrimary : PrismColors.progressBarSecondary)
                .animation(.easeInOut(duration: 0.3), value: currentStep)
            
            // Line 3
            Rectangle()
                .fill(isActive(3) ? PrismColors.progressBarPrimary : PrismColors.progressBarSecondary)
                .frame(width: 80, height: 2)
                .animation(.easeInOut(duration: 0.3), value: currentStep)
            
            // Step 4
            Image(systemName: "checkmark.circle.fill")
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundStyle(isActive(3) ? PrismColors.progressBarPrimary : PrismColors.progressBarSecondary)
                .animation(.easeInOut(duration: 0.3), value: currentStep)
        }
        .frame(width: PrismLayout.maxWidth)
    }
}

struct ProgressBarExample: View {
    @State private var currentStep = 0
    
    var body: some View {
        VStack(spacing: 20) {
            ProgressBar(currentStep: $currentStep)
            
            Button("Next Step") {
                if currentStep < 5 {
                    currentStep += 1
                }
            }
            
            Button("Reset") {
                currentStep = 0
            }
        }
        .padding()
        .background(PrismColors.background)
    }
}

#Preview {
    ProgressBarExample()
}
