//
//  PrismLogo.swift
//  Prism
//
//  Created by dull on 2025-02-16.
//

import SwiftUI

struct PrismLogo: View {
    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 155, height: 60)
                .background(
                    Image("prismTextLogo")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 175, height: 175)
                        .clipped()
                )
        }
    }
}

