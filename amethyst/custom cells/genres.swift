//
//  genres.swift
//  amethyst
//
//  Used in cards
//  Created by Angela Wu on 3/11/25.
//
//this navigates to genreViews
import SwiftUI


struct genres: View {
//    @State private var title = titles.all
    let genreName: String
    let index: Int
    let media: String
    
    var body: some View {
        NavigationLink(destination:genreViews(media: media, genre: genreName, index: index)){
                Text(genreName).font(.custom("RobotoMono-Medium", size: 25))
                    .padding(15)
                    .frame(width: 250, height: 66.67, alignment: .leading)
                    .foregroundColor(colorManager.paleBlue)
                    .background(colorManager.darkBlue)
            }
    }
}

struct genres_Previews: PreviewProvider {
    static var previews: some View {
        cards(title: titles.shows())
            .overlay(genres(genreName: "hi", index: 1, media:"Movies"))
    }
}
