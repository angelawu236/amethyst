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
    var favorites: [String: String] {
            titles.all.first(where: { $0.title == media })?.favoriteTitles ?? [:]
        }
    var body: some View {
        let array = Array(favorites)
        let secondPair = array[1]
        let firstPair = array[0]
        HStack (spacing: 50){
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
    }
}
#Preview {
    favoritesCell(media: "Movies")
}
