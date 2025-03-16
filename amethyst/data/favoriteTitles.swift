//
//  favoriteTitles.swift
//  amethyst
//
//  Created by Angela Wu on 3/16/25.
//

import SwiftUI
import Foundation

struct favoriteTitles: Identifiable{
    let favoriteTitle: String
    let favoriteImage: String
    let id = UUID()
    
    static let allFavoriteTitles: [favoriteTitles] = [favoriteTitles(favoriteTitle: "Someday or One Day", favoriteImage: "favorite"),favoriteTitles(favoriteTitle: "Whisper of the Heart",favoriteImage: "favorite"),favoriteTitles(favoriteTitle: "Mulan",favoriteImage: "favorite")]

    //to test in favoritesCell
    static func fav() -> favoriteTitles {
        favoriteTitles(favoriteTitle: "Someday or One Day",favoriteImage: "favorite")
    }
}
