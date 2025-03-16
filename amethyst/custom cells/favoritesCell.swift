//
//  favoritesCell.swift
//  amethyst
//
//  Created by Angela Wu on 3/16/25.
//

import SwiftUI

struct favoritesCell: View {
    let favorite: titles
    
    var body: some View {
        let array = Array(favorite.favoriteTitles)
        let secondPair = array[1]
        let firstPair = array[0]
        HStack (spacing: 50){
                Image(firstPair.value)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 200, alignment: .center)
                    .clipped()
                Image(secondPair.value)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 200, alignment: .center)
                    .clipped()
        }
    }
}
#Preview {
    favoritesCell(favorite: titles.movies())
}
