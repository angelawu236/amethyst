//
//  genreCard.swift
//  amethyst
//
//  Created by Angela Wu on 3/16/25.
//
import SwiftUI

struct genreCell: View {
//    @State private var favorite = favoriteTitles.allFavoriteTitles
//    let title: titles
    let media: String
    let genre: String
    let index: Int
    
    @State var editView = false
    
    var body: some View {
        VStack(spacing: 20){
            favoritesCell(media:media, genre: genre)
            ZStack(){
                Text(genre).foregroundStyle(colorManager.paleBlue).font(.custom("RobotoMono-Medium", size: 30))
                
                Button(action:{
                    if editView{
                        editView = false
                    } else {
                        editView = true
                    }
                }){
                    Image(systemName: "square.and.pencil")
                        .foregroundStyle(colorManager.paleText)
                        .font(.system(size: 22))
                }
                .padding(.leading, 330)
            }
            if !editView{
                ScrollView(.vertical, showsIndicators: false){
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 0){
                            Text("Name").frame(width: 216, alignment: .leading)
                                .font(.custom("RobotoMono-Medium", size: 20))
                                .foregroundStyle(colorManager.paleText)
                            Text("Rating").frame(width: 126, alignment: .leading)
                                .font(.custom("RobotoMono-Medium", size: 20))
                                .foregroundStyle(colorManager.paleText)
                            Text("Comments").frame(width: 316, alignment: .leading)
                                .font(.custom("RobotoMono-Medium", size: 20))
                                .foregroundStyle(colorManager.paleText)
                        }
                        .padding(.horizontal, 20)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                        watchList(media: "Movies", genre: "Romance", editView: false)
                }
                    
                    
//                    .padding(.trailing, 25)
                }
            } else {
                ScrollView(.vertical, showsIndicators: false){
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 0){
                            Text("Name").frame(width: 216, alignment: .leading)
                                .font(.custom("RobotoMono-Medium", size: 20))
                                .foregroundStyle(colorManager.paleText)
                            Text("Rating").frame(width: 126, alignment: .leading)
                                .font(.custom("RobotoMono-Medium", size: 20))
                                .foregroundStyle(colorManager.paleText)
                            Text("Comments").frame(width: 316, alignment: .leading)
                                .font(.custom("RobotoMono-Medium", size: 20))
                                .foregroundStyle(colorManager.paleText)
                        }
                        .padding(.leading, 45)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                    
                        watchList(media: "Movies", genre: "Romance", editView: true)
                }
//                    .padding(.leading, 45)
//                    .frame(maxWidth: .infinity, alignment: .leading)
                }
            }
        }
    }
}
#Preview {
    genreCell(media:"Movies",genre:"Romance",index:0)
}
