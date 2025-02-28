//
//  Constants.swift
//  Prism
//
//  Created by dull on 2025-02-16.
//

import SwiftUI

// MARK: - Color Constants
struct PrismColors {
    // MARK: Base Colors
    static let background = Color(hex: "#0D0D0F")
    static let textPrimary = Color.white
    static let textSecondary = Color.white.opacity(0.8)
    static let progressBarPrimary = Color.white
    static let progressBarSecondary = Color.white.opacity(0.4)
    
    // MARK: Gradient Definitions
    static let buttonGradientStops: [Gradient.Stop] = [
        .init(color: Color(hex: "5893FF"), location: 0.0),
        .init(color: Color(hex: "81E753"), location: 0.13),
        .init(color: Color(hex: "E7C700"), location: 0.25),
        .init(color: Color(hex: "CB0000"), location: 0.50),
        .init(color: Color(hex: "5893FF"), location: 1.0)
    ]
    
    static let rainbowGradientStops: [Gradient.Stop] = [
        .init(color: Color(hex: "#0D0D0F"), location: 0),
        .init(color: Color(hex: "#0D0D0F").opacity(0.99), location: 0.5),
        .init(color: Color(hex: "#0D0D0F").opacity(0.9), location: 1)
    ]
    
    static let elipticalGradientColors: [Color] = [
        Color(red: 0.8, green: 0, blue: 0),
        Color(red: 0.91, green: 0.78, blue: 0),
        Color(red: 0.51, green: 0.9, blue: 0.32),
        Color(red: 0.35, green: 0.57, blue: 1)
    ]
    
    static let blueGradientStops: [Gradient.Stop] = [
        .init(color: Color(red: 0.05, green: 0.05, blue: 0.06), location: 0.00),
        .init(color: Color(red: 0.05, green: 0.05, blue: 0.06).opacity(0.99), location: 0.50),
        .init(color: Color(red: 0.05, green: 0.05, blue: 0.06).opacity(0.98), location: 0.67),
        .init(color: Color(red: 0.05, green: 0.05, blue: 0.06).opacity(0.95), location: 0.83),
        .init(color: Color(red: 0.05, green: 0.05, blue: 0.06).opacity(0.9), location: 1.00)
    ]
        
}

// MARK: - Font Constants
struct PrismFonts {
    static func outfit(size: CGFloat, weight: Font.Weight = .regular) -> Font {
        Font.custom("Outfit", size: size).weight(weight)
    }
}

// MARK: - Layout Constants
struct PrismLayout {
    static let maxWidth: CGFloat = 366
    static let buttonHeight: CGFloat = 70
    static let cornerRadius: CGFloat = 25
    static let horizontalPadding: CGFloat = 18
    static let borderWidth: CGFloat = 2
    static let iconSize: CGFloat = 24
}

// MARK: - Color Extension
extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var rgbValue: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&rgbValue)
        
        let r = Double((rgbValue & 0xFF0000) >> 16) / 255.0
        let g = Double((rgbValue & 0x00FF00) >> 8) / 255.0
        let b = Double(rgbValue & 0x0000FF) / 255.0
        
        self.init(red: r, green: g, blue: b)
    }
}

// MARK: - View Extensions
extension View {
    func rainbowBackground() -> some View {
        modifier(RainbowBackgroundModifier())
    }
    
    func prismColorButtonModifier() -> some View {
        modifier(PrismColorButtonModifier())
    }
    
    func prismBlueButtonModifier() -> some View {
        modifier(PrismBlueButtonModifier())
    }
    
    func prismRedButtonModifier() -> some View {
        modifier(PrismRedButtonModifier())
    }
    
    func blueBackground() -> some View {
        modifier(BlueBackgroundModifier())
    }
    
    func redBackground() -> some View {
        modifier(RedBackgroundModifier())
    }

}
