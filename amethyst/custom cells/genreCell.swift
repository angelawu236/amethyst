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
        VStack(spacing: 20){
            favoritesCell(media:media, genre: genre)
            Text(genre).foregroundStyle(colorManager.paleBlue).font(.custom("RobotoMono-Medium", size: 30))
            ScrollView(.vertical, showsIndicators: false){
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 20){
                        Text("Name").frame(width: 200, alignment: .leading)
                            .font(.custom("RobotoMono-Medium", size: 20))
                            .foregroundStyle(colorManager.paleText)
                        Text("Rating").frame(width: 200, alignment: .leading)
                            .font(.custom("RobotoMono-Medium", size: 20))
                            .foregroundStyle(colorManager.paleText)
                        Text("Comments").frame(width: 200, alignment: .leading)
                            .font(.custom("RobotoMono-Medium", size: 20))
                            .foregroundStyle(colorManager.paleText)
                    }
                
                watchList(media: "Movies", genre: "Romance")
            }
                .padding(.horizontal, 28)
            }
        }
    }
}
#Preview {
    genreCell(media:"Movies",genre:"Romance",index:0)
}
