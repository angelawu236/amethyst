//
//  genreCard.swift
//  amethyst
//
//  Created by Angela Wu on 3/16/25.
//
import SwiftUI

struct genreCell: View {
//    @State private var favorite = favoriteTitles.allFavoriteTitles
    
    var body: some View {
        VStack{
            favoritesCell(favorite: titles.movies())
        }
    }
}
#Preview {
    genreCell()
}
