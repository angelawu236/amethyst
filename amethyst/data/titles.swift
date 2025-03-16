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
    let genre:[String]
    let id = UUID()
    
    static let all: [titles] =
    [titles(title: "Movies", imageName: ["media","media","media","media"], genre:["Romance","Drama","Action","Fantasy"]),
     titles(title: "Shows", imageName: ["show","show","show","show"],genre:["Romance2","Drama2","Action2","Fantasy2"]),
     titles(title: "Documentaries",imageName: ["documentary","documentary","documentary","documentary"],genre:["Romance3","Drama3","Action3","Fantasy3"]),
     titles(title: "C Dramas",imageName: ["tv","tv","tv","tv"],genre:["Romance4","Drama4","Action4","Fantasy4"])]
    
    
    
    //to test in cards
    static func movies() -> titles {
        titles(title: "Movies",imageName: ["media","media","media","media"],genre:["Romance","Drama","Action","Fantasy"])
    }
    
    static func shows()-> titles {
        titles(title: "Shows",imageName: ["show","show","show","show"],genre:["Romance","Drama","Action","Fantasy"])
    }
    
    
    static func documentaries() -> titles {
        titles(title: "Documentaries",imageName: ["documentary","documentary","documentary","documentary"],genre:["Romance","Drama","Action","Fantasy"])
    }
}
