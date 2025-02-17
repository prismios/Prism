//
//  ContentView.swift
//  Prism
//
//  Created by dull on 2025-02-16.
//

import SwiftUI

struct ContentView: View {
    @State var isAppOpen: Bool = false
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .onAppear() {
            isAppOpen = true
        }
        .fullScreenCover(isPresented: $isAppOpen) {
            OnboardingView()
        }
    }
}


#Preview {
    ContentView()
}
