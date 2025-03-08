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
            colorManager.greenBg
                .edgesIgnoringSafeArea(.all)
            NavigationStack{
                ScrollView{
                    titleView()
                }
                .background(colorManager.greenBg)
            }
            .padding(.horizontal, 25)
        }
    }
}

#Preview {
    ContentView()
}
