//
//  genreViews.swift
//  amethyst
//
//  Created by Angela Wu on 3/15/25.
//
import SwiftUI

struct genreViews: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State private var title = titles.all
    let media: String
    let genre: String
    let index: Int
    
    var btnBack : some View { Button(action: {
            self.presentationMode.wrappedValue.dismiss()
            }) {
                HStack (){
                    Text("Home").font(Font.custom("RobotoMono-Medium", size: 23))
                        .foregroundStyle(colorManager.paleText)
                }
                .padding(.horizontal, 10)
            }
        }
    
    var body: some View {
        ZStack{
            colorManager.greenBg
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .leading, spacing:30){
                genreCell(media: media,genre:genre,index:index)
                Spacer()
            }
            .padding(.top, 30)
        }
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: btnBack)
    }
}

#Preview {
    NavigationView{
        genreViews(media:"Movies", genre: "Romance", index: 2)
    }
}
