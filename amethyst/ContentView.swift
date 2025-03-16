//
//  ContentView.swift
//  amethyst
//
//  Created by Angela Wu on 3/6/25.
//

import SwiftUI


struct ContentView: View {
    @State private var title = titles.all
    
    var body: some View {
        NavigationView{
            ZStack {
                colorManager.greenBg
                    .edgesIgnoringSafeArea(.all)

                ScrollView(showsIndicators: false){
                        titleView()
                            VStack (alignment: .leading, spacing:30){
                                ForEach(title){ title in
                                    cards(title: title)
                                }
                            }
                                                
                    }
                    .background(colorManager.greenBg)
                
                
                .padding(.horizontal, 25)
            }
        }

    }
}

#Preview {
    ContentView()
}
