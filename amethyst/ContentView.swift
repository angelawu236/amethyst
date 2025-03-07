//
//  ContentView.swift
//  amethyst
//
//  Created by Angela Wu on 3/6/25.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        ZStack {
            colorManager.greenBg // Background color
                .edgesIgnoringSafeArea(.all) // Extend to edges
            
            LazyVStack {
                Text("hello worlddd!").font(Font.custom("RobotoMono-Medium", size: 32))
                    .foregroundColor(colorManager.paleText)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
