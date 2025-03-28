//
//  favoritesCell.swift
//  amethyst
//
//  Created by Angela Wu on 3/16/25.
//

import SwiftUI

struct favoritesCell: View {
//    let favorite: titles
    let media: String
    let genre: String
    var favoritesGroup: [String: [String: String]] {
            titles.all.first(where: { $0.title == media })?.favoriteTitles ?? [:]
        }
    var favorites: [String:String]{
        favoritesGroup[genre] ?? [:]
    }
    var body: some View {
        let array = Array(favorites)
        let secondPair = array[1]
        let firstPair = array[0]
        HStack (spacing: 40){
                Image(firstPair.value)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 200, alignment: .center)
                    .clipped()
                    .overlay(
                        Rectangle()
                            .inset(by: 1.5)
                            .stroke(colorManager.darkBlue, lineWidth: 5)
                        )
                Image(secondPair.value)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 200, alignment: .center)
                    .clipped()
                    .overlay(
                        Rectangle()
                            .inset(by: 1.5)
                            .stroke(colorManager.darkBlue, lineWidth: 5)
                        )
            
        }
        .padding(.horizontal, 20)
    }
}
#Preview {
    favoritesCell(media: "Movies", genre: "Romance")
}
