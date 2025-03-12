//
//  genres.swift
//  amethyst
//
//  Created by Angela Wu on 3/11/25.
//
import SwiftUI
//
struct genres: View {
    @State private var title = titles.all
    
    var body: some View {
        Text("hi")
            .foregroundColor(colorManager.paleBlue)
            .background(colorManager.darkBlue)
    }
}

struct genres_Previews: PreviewProvider {
    static var previews: some View {
        cards(title: titles.shows())
            .overlay(genres())
    }
}
