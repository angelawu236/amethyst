//
//  watchList.swift
//  amethyst
//
//  Created by Angela Wu on 3/20/25.
//

import SwiftUI
import SwiftData

struct watchList: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var watchItems: [watchItem]
    
    @State var nameInput: String = ""
    @State var ratingInput: String = ""
    @State var commentInput: String = ""
    
    @State private var itemId: UUID?
    
    let media: String
    let genre: String
    
    
    var body: some View {

        VStack(spacing: 10){
            //display existing rows
            ForEach(watchItems){item in
                @Bindable var item = item
                HStack(spacing: 20){
                    TextField("", text: $item.name)
                        .frame(width: 100)
                    TextField("", text: $item.rating)
                        .frame(width: 100)
                    TextField("", text: $item.comments)
                        .frame(width: 100)
                }
            }
            
           //to add a row
                HStack(spacing: 20) {
                    TextField("", text: $nameInput,prompt: Text("Name").foregroundColor(colorManager.paleText))
                        .foregroundColor(colorManager.paleText)
                        .font(Font.custom("RobotoMono-Medium", size: 20))
                        .frame(width: 100, alignment: .leading)
                        .onSubmit{
                            saveOrUpdateField(field: "name", value: nameInput)
                            nameInput = ""
                        }
                    
                    TextField("", text: $ratingInput, prompt: Text("Rating").foregroundColor(colorManager.paleText))
                        .foregroundColor(colorManager.paleText)
                        .font(Font.custom("RobotoMono-Medium", size: 20))
                        .frame(width: 100, alignment: .leading)
                        .onSubmit{
                            saveOrUpdateField(field: "rating", value: ratingInput)
                            ratingInput = ""
                        }
                    
                    TextField("", text: $commentInput, prompt: Text("Comments").foregroundColor(colorManager.paleText))
                        .foregroundColor(colorManager.paleText)
                        .font(Font.custom("RobotoMono-Medium", size: 20))
                        .frame(width: 100, alignment: .leading)
                        .onSubmit{
                            saveOrUpdateField(field: "comments", value: commentInput)
                            commentInput = ""
                        }
                }
        }

    }
    
    func saveOrUpdateField(field: String, value: String){
        let newItem = watchItem(
            name: field  == "name" ? value: "",
            rating: field == "rating" ? value: "",
            comments: field == "comments" ? value: "",
            media: media,
            genre: genre)
        modelContext.insert(newItem)
        try? modelContext.save()
    }
}

#Preview {
    watchList(media: "Movies", genre: "Romance")
}
