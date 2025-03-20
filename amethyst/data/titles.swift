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
    let favoriteTitles: [String: [String:String]]
    let id = UUID()
    
    static let all: [titles] =
    [titles(title: "Movies", imageName: ["media","media","media","media"], genre:["Romance","Drama","Action","Fantasy"], favoriteTitles:["Romance":["Suzume" :"suzume", "Whisper of the Heart": "suzume"],"Drama":["Whisper of the Heart": "whisper","Suzume" :"whisper"],"Action":["Suzume" :"suzume", "Whisper of the Heart": "whisper"],"Fantasy":["Whisper of the Heart": "whisper","Suzume" :"suzume"]]),
     titles(title: "Shows", imageName: ["show","show","show","show"],genre:["Romance2","Drama2","Action2","Fantasy2"],favoriteTitles:["Romance2":["Someday or One Day" :"favorite", "When Life Gives You Tangerines": "tangerines"],"Drama2":["When Life Gives You Tangerines": "tangerines","Someday or One Day" :"favorite" ],"Action2":["Someday or One Day" :"favorite", "When Life Gives You Tangerines": "tangerines"],"Fantasy2":["When Life Gives You Tangerines": "tangerines","Someday or One Day" :"favorite" ]]),
     titles(title: "Documentaries",imageName: ["documentary","documentary","documentary","documentary"],genre:["Romance3","Drama3","Action3","Fantasy3"],favoriteTitles:["Romance3":["Earth" :"earth","Northern Lights": "northern"],"Drama3":["Earth" :"earth","Northern Lights": "northern"],"Action3":["Earth" :"earth","Northern Lights": "northern"],"Fantasy3":["Earth" :"earth","Northern Lights": "northern"]]),
     titles(title: "C Dramas",imageName: ["tv","tv","tv","tv"],genre:["Romance4","Drama4","Action4","Fantasy4"],favoriteTitles:["Romance4":["Nirvana in Fire" :"nirvana","Love between Fairy and Devil": "fairy"],"Drama4":["Nirvana in Fire" :"nirvana","Love between Fairy and Devil": "fairy"],"Action4":["Nirvana in Fire" :"nirvana","Love between Fairy and Devil": "fairy"],"Fantasy4":["Nirvana in Fire" :"nirvana","Love between Fairy and Devil": "fairy"]])]
    
    
    
    //to test in cards
    static func movies() -> titles {
        titles(title: "Movies",imageName: ["media","media","media","media"],genre:["Romance","Drama","Action","Fantasy"],favoriteTitles:["Romance":["Suzume" :"suzume", "Whisper of the Heart": "whisper"],"Drama":["Whisper of the Heart": "whisper","Suzume" :"suzume"],"Action":["Suzume" :"suzume", "Whisper of the Heart": "whisper"],"Fantasy":["Whisper of the Heart": "whisper","Suzume" :"suzume"]])
    }
    
    static func shows()-> titles {
        titles(title: "Shows",imageName: ["show","show","show","show"],genre:["Romance","Drama","Action","Fantasy"],favoriteTitles:["Romance2":["Someday or One Day" :"favorite", "When Life Gives You Tangerines": "tangerines"],"Drama2":["When Life Gives You Tangerines": "tangerines","Someday or One Day" :"favorite" ],"Action2":["Someday or One Day" :"favorite", "When Life Gives You Tangerines": "tangerines"],"Fantasy2":["When Life Gives You Tangerines": "tangerines","Someday or One Day" :"favorite" ]])
    }
//    
//    
//    static func documentaries() -> titles {
//        titles(title: "Documentaries",imageName: ["documentary","documentary","documentary","documentary"],genre:["Romance","Drama","Action","Fantasy"])
//    }
}
