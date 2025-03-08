//
//  titles.swift
//  amethyst
//
//  Created by Angela Wu on 3/7/25.
//
import Foundation

struct titles:Identifiable {
    
    let title:String
    let imageName: [String]
    let id = UUID()
    
    static let all: [titles] =
    [titles(title: "Movies", imageName: ["media","media","media","media"]),
     titles(title: "Shows", imageName: ["show","show","show","show"]),
         titles(title: "Documentaries",imageName: ["documentary","documentary","documentary","documentary"]),
         titles(title: "Reality TV",imageName: ["tv","tv","tv","tv"])]
    
    
    
    //to test in cards
    static func movies() -> titles {
        titles(title: "Movies",imageName: ["media","media","media","media"])
    }
    
    static func shows()-> titles {
        titles(title: "Shows",imageName: ["show","show","show","show"])
    }
    
    
    static func documentaries() -> titles {
        titles(title: "Documentaries",imageName: ["documentary","documentary","documentary","documentary"])
    }
    
    static func realityTV() -> titles {
        titles(title: "Reality TV",imageName: ["tv","tv","tv","tv"])
    }
}
