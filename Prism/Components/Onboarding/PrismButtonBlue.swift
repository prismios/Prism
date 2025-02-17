//
//  PrismButtonColor 2.swift
//  Prism
//
//  Created by dull on 2025-02-17.
//

import SwiftUI

struct PrismButtonBlue: View {
    //let title: String
   // let action: () -> Void
   // let style: ButtonStyle
    
    enum ButtonStyle {
        case primary
        case secondary
    }
    
    var body: some View {
        HStack(alignment: .center, spacing: 4) {
            Text("Get Shortcut")
              .font(
                Font.custom("Outfit", size: 20)
                  .weight(.semibold)
              )
              .foregroundColor(Color(red: 0.2, green: 0.78, blue: 0.35))
        }
        .padding(0)
        .frame(maxWidth: PrismLayout.maxWidth, minHeight: 70, maxHeight: 70, alignment: .center)
        .background(Color(red: 0.16, green: 0.16, blue: 0.18).opacity(0.75))
        .background(Color(red: 0, green: 0.48, blue: 1))
        .cornerRadius(25)
        .shadow(color: .black.opacity(0.25), radius: 10, x: 0, y: 4)
        .overlay(
          RoundedRectangle(cornerRadius: 25)
            .inset(by: 0.5)
            .stroke(Color(red: 0, green: 0.48, blue: 1), lineWidth: 2)
        )
        .overlay(
          RoundedRectangle(cornerRadius: 25)
            .inset(by: 0.5)
            .stroke(Color(red: 0.16, green: 0.16, blue: 0.18).opacity(0.75), lineWidth: 2)
        )
        
    }
}



