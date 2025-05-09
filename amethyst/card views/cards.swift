//
//  cards.swift
//  amethyst
//
//  Created by Angela Wu on 3/7/25.
//
import SwiftUI

var media = "String"


struct cards: View {
    let title: titles
    
    
    var body: some View {
        VStack (alignment: .leading, spacing: 10){
            Text(title.title).font(Font.custom("RobotoMono-Medium", size: 35))
                .foregroundColor(colorManager.paleBlue)
            ScrollView(.horizontal){
                HStack(spacing: 25){
                    ForEach(0..<min(title.imageName.count, title.genre.count), id: \.self){ index in
                        ZStack(alignment: .bottom) {
                            Image(title.imageName[index])
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 250, height: 200, alignment: .center)
                            genres(genreName: title.genre[index], index: index, media: title.title)
                                    .contentShape(Rectangle())
                        }
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .inset(by: 1.5)
                                .stroke(colorManager.darkBlue, lineWidth: 5)
                        )
                        .clipped()
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                    
                }
            }
        }
    }
    
    
    struct cards_Previews: PreviewProvider {
        static var previews: some View {
            VStack (alignment: .leading, spacing:30){
                cards(title: titles.shows())
                //            cards(title: titles.movies())
                //            cards(title: titles.movies())
            }
        }
    }
}
