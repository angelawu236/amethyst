//
//  genrelist.swift
//  amethyst
//
//  Created by Angela Wu on 3/12/25.
//

import Foundation

struct genrelist: Identifiable {
    let genreTitle: String
    let id = UUID()
    
    static let allGenres: [genrelist] =
    [genrelist(genreTitle:"slice of life"),genrelist(genreTitle:"ghibli"),genrelist(genreTitle:"romance"),genrelist(genreTitle:"fantasy"), genrelist(genreTitle:"action"),genrelist(genreTitle:"comedy"),genrelist(genreTitle:"wuxia"),genrelist(genreTitle:"modern"),genrelist(genreTitle:"horror"),genrelist(genreTitle:"mystery")]
}
