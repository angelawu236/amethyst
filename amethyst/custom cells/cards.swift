//
//  cards.swift
//  amethyst
//
//  Created by Angela Wu on 3/7/25.
//
import SwiftUI


struct cards: View {
    let title: titles
    
    var body: some View {
            VStack (alignment: .leading, spacing: 10){
                Text(title.title).font(Font.custom("RobotoMono-Medium", size: 35))
                    .foregroundColor(colorManager.paleText)
                ScrollView(.horizontal){
                    HStack{
                        Image(.media)
                            .frame(width: 220, height: 155)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        Image(.media)
                            .resizable().frame(width: 145, height: 145)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        Image(.media)
                            .resizable().frame(width: 145, height: 145)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        Image(.media)
                            .resizable().frame(width: 145, height: 145)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                }
            }
    }
}

struct cards_Previews: PreviewProvider {
    static var previews: some View {
        VStack (alignment: .leading, spacing:30){
            cards(title: titles.anime())
            cards(title: titles.movies())
//            cards(title: titles.movies())
        }
    }
}
