//
//  watchList.swift
//  amethyst
//
//  Created by Angela Wu on 3/20/25.
//

import SwiftUI
import SwiftData

struct watchList: View {
    enum FocusableField: Hashable, CaseIterable{
        case nameInput, ratingInput, commentInput
    }
    
    @FocusState private var focusedField: FocusableField?
    
    @Environment(\.modelContext) private var modelContext
    @Query private var watchItems: [watchItem]
    
    @State var nameInput: String = ""
    @State var ratingInput: String = ""
    @State var commentInput: String = ""
    
    @State private var itemId: UUID?
    
    let media: String
    let genre: String
    
    
    var body: some View {
        ScrollViewReader { scrollProxy in
            ScrollView(showsIndicators: false){
            
            VStack(spacing: 10){
                //display existing rows
                ForEach(watchItems){item in
                    @Bindable var item = item
                    HStack(spacing: 20){
                        TextField("", text: $item.name)
                            .font(Font.custom("RobotoMono-Medium", size: 17))
                            .frame(width: 100)
                        TextField("", text: $item.rating)
                            .font(Font.custom("RobotoMono-Medium", size: 17))
                            .frame(width: 100)
                        TextField("", text: $item.comments)
                            .font(Font.custom("RobotoMono-Medium", size: 17))
                            .frame(width: 100)
                    }
                }
                
                //to add a row
                HStack(spacing: 20) {
                    TextField("", text: $nameInput,prompt: Text("Name").foregroundColor(.black))
                        .opacity(0.5)
                        .frame(width: 100, alignment: .leading)
                        .focused($focusedField, equals: .nameInput)
                        .onSubmit{
                            saveOrUpdateField(field: "name", value: nameInput)
                            nameInput = ""
                        }
                    
                    TextField("", text: $ratingInput, prompt: Text("Rating").foregroundColor(.black))
                        .opacity(0.5)
                        .frame(width: 100, alignment: .leading)
                        .focused($focusedField, equals: .ratingInput)
                        .onSubmit{
                            saveOrUpdateField(field: "rating", value: ratingInput)
                            ratingInput = ""
                        }
                    
                    TextField("", text: $commentInput, prompt: Text("Comments").foregroundColor(.black))
                        .opacity(0.5)
                        .frame(width: 100, alignment: .leading)
                        .focused($focusedField, equals: .commentInput)
                        .onSubmit{
                            saveOrUpdateField(field: "comments", value: commentInput)
                            commentInput = ""
                        }
                    }
                }
                .onChange(of: focusedField) {
                    if let field = focusedField {
                        withAnimation {
                            switch field {
                            case .nameInput:
                                scrollProxy.scrollTo("input_name", anchor: .center)
                            case .ratingInput:
                                scrollProxy.scrollTo("input_rating", anchor: .center)
                            case .commentInput:
                                scrollProxy.scrollTo("input_comment", anchor: .center)
                            }
                        }
                    }
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
