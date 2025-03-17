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
            VStack{
                genreCell(title: titles.movies())
            }
        }
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: btnBack)
    }
}

#Preview {
    NavigationView{
        genreViews(media:"Movies")
    }
}
