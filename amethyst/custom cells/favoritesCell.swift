//
//  favoritesCell.swift
//  amethyst
//
//  Created by Angela Wu on 3/16/25.
//

import SwiftUI

struct favoritesCell: View {
    let favorite: favoriteTitles
    
    var body: some View {
        HStack (spacing: 50){
            Image(favorite.favoriteImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 120, height: 100, alignment: .center)
            Image(favorite.favoriteImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 120, height: 100, alignment: .center)
        }
    }
}
#Preview {
    favoritesCell(favorite: favoriteTitles.fav())
}
