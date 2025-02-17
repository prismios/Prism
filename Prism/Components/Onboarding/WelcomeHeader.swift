//
//  WelcomeHeader.swift
//  Prism
//
//  Created by dull on 2025-02-16.
//

import SwiftUI

struct WelcomeHeader: View {
    var body: some View {
        VStack(spacing: 5) {
            Text("Welcome to")
                .font(PrismFonts.outfit(size: 20, weight: .medium))
                .foregroundColor(PrismColors.textSecondary)
                .multilineTextAlignment(.center)
            
            PrismLogo()
        }
        .padding(.vertical, 40)
        .frame(maxWidth: PrismLayout.maxWidth)
    }
}

