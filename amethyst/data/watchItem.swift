//
//  watchItem.swift
//  amethyst
//
//  Created by Angela Wu on 3/21/25.
//

import Foundation
import SwiftData


@Model
final class watchItem {
    var name: String
    var rating: String
    var comments: String
    
    init(name: String, rating: String, comments: String){
        self.name = name
        self.rating = rating
        self.comments = comments
    }
}
