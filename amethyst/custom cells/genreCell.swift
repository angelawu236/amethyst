//
//  genreCard.swift
//  amethyst
//
//  Created by Angela Wu on 3/16/25.
//
import SwiftUI

struct genreCell: View {
//    @State private var favorite = favoriteTitles.allFavoriteTitles
//    let title: titles
    let media: String
    let genre: String
    let index: Int
    
    var body: some View {
        VStack(spacing: 30){
            favoritesCell(media:media, genre: genre)
            Text(genre).foregroundStyle(colorManager.paleBlue).font(.custom("RobotoMono-Medium", size: 30))
            watchList()
                .padding(.horizontal, 25)
        }
    }
}
#Preview {
    genreCell(media:"Movies",genre:"Romance",index:0)
}
