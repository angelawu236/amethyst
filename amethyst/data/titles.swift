//
//  titles.swift
//  amethyst
//
//  Created by Angela Wu on 3/7/25.
//
struct titles {
    let title:String
    
    static func movies() -> titles {
        titles(title: "Movies")
    }
    
    static func shows()-> titles {
        titles(title: "Shows")
    }
    
    static func anime() -> titles {
        titles(title: "Anime")
    }
    
    static func documentaries() -> titles {
        titles(title: "Documentaries")
    }
    
    static func realityTV() -> titles {
        titles(title: "Reality TV")
    }
}
