//
//  watchItem.swift
//  amethyst
//
//  Created by Angela Wu on 3/21/25.
//

import Foundation
import SwiftData


@Model
class watchItem {
    var name: String
    var rating: String
    var comments: String
    var id: UUID
    var media: String
    var genre: String
    
    init(name: String, rating: String, comments: String, media: String, genre: String){
        self.name = name
        self.rating = rating
        self.comments = comments
        self.media = media
        self.genre = genre
        self.id = UUID()
    }
    
}
