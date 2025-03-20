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
        VStack{
            favoritesCell(media:media)
        }
    }
}
#Preview {
    genreCell(media:"Movies",genre:"Romance",index:0)
}
