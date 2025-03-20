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
    let favoriteTitles: [String:String]
    let id = UUID()
    
    static let all: [titles] =
    [titles(title: "Movies", imageName: ["media","media","media","media"], genre:["Romance","Drama","Action","Fantasy"], favoriteTitles:["Suzume" :"suzume", "Whisper of the Heart": "whisper"]),
     titles(title: "Shows", imageName: ["show","show","show","show"],genre:["Romance2","Drama2","Action2","Fantasy2"],favoriteTitles:["Someday or One Day" :"favorite","When Life Gives You Tangerines": "tangerines"]),
     titles(title: "Documentaries",imageName: ["documentary","documentary","documentary","documentary"],genre:["Romance3","Drama3","Action3","Fantasy3"],favoriteTitles:["Earth" :"earth","Northern Lights": "northern"]),
     titles(title: "C Dramas",imageName: ["tv","tv","tv","tv"],genre:["Romance4","Drama4","Action4","Fantasy4"],favoriteTitles:["Nirvana in Fire" :"nirvana","Love between Fairy and Devil": "fairy"])]
    
    
    
    //to test in cards
    static func movies() -> titles {
        titles(title: "Movies",imageName: ["media","media","media","media"],genre:["Romance","Drama","Action","Fantasy"],favoriteTitles:["Someday or One Day" :"favorite", "Whisper of the Heart": "whisper"])
    }
    
    static func shows()-> titles {
        titles(title: "Shows",imageName: ["show","show","show","show"],genre:["Romance","Drama","Action","Fantasy"],favoriteTitles:["Mulan" :"mulan","Whisper of the Heart": "whisper"])
    }
    
    
    static func documentaries() -> titles {
        titles(title: "Documentaries",imageName: ["documentary","documentary","documentary","documentary"],genre:["Romance","Drama","Action","Fantasy"],favoriteTitles:["Someday or One Day" :"favorite", "Whisper of the Heart": "whisper"])
    }
}
