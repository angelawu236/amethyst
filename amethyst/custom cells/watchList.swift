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
    @FocusState private var lastFocusedField: FocusableField?
    
    @Environment(\.modelContext) private var modelContext
    @Query private var watchItems: [watchItem]
    
    @State var nameInput: String = ""
    @State var ratingInput: String = ""
    @State var commentInput: String = ""
    
    @State private var itemId: UUID?

    
    let media: String
    let genre: String
    
    
    var body: some View {

        ScrollView (.vertical, showsIndicators: false){
        VStack(spacing: 10){
            //ScrollView
            ScrollViewReader{ proxy in
//                ScrollView (.vertical, showsIndicators: false){
                        ForEach(watchItems){item in
                            @Bindable var item = item
                            HStack(spacing: 20){
                                TextField("", text: $item.name)
                                    .font(Font.custom("RobotoMono-Medium", size: 17))
                                    .frame(width: 200)
                                TextField("", text: $item.rating)
                                    .font(Font.custom("RobotoMono-Medium", size: 17))
                                    .frame(width: 200)
                                TextField("", text: $item.comments)
                                    .font(Font.custom("RobotoMono-Medium", size: 17))
                                    .frame(width: 200)
                            }
                        }
                    .padding(.horizontal, 28)
                    
                        //to add a row
                        HStack(spacing: 20) {
                            TextField("", text: $nameInput,prompt: Text("Name").foregroundColor(.black))
                                .foregroundStyle(.black)
                                .font(Font.custom("RobotoMono-Medium", size: 17))
                                .opacity(0.5)
                                .frame(width: 200, alignment: .leading)
                                .focused($focusedField, equals: .nameInput)
                                .id("input_name")
                                .onChange(of: focusedField){
                                    updateItem(from: lastFocusedField)
                                    lastFocusedField = focusedField
                                }
                                .onSubmit{
                                    saveField(field: "name", value: nameInput)
                                }
                            
                            TextField("", text: $ratingInput, prompt: Text("Rating").foregroundColor(.black))
                                .foregroundStyle(.black)
                                .font(Font.custom("RobotoMono-Medium", size: 17))
                                .opacity(0.5)
                                .frame(width: 200, alignment: .leading)
                                .focused($focusedField, equals: .ratingInput)
                                .id("input_rating")
                                .onChange(of: focusedField){
                                    updateItem(from: lastFocusedField)
                                    lastFocusedField = focusedField
                                }
                                .onSubmit{
                                    saveField(field: "rating", value: ratingInput)
                                }
                            
                            TextField("", text: $commentInput, prompt: Text("Comments").foregroundColor(.black))
                                .foregroundStyle(.black)
                                .font(Font.custom("RobotoMono-Medium", size: 17))
                                .opacity(0.5)
                                .frame(width: 200, alignment: .leading)
                                .focused($focusedField, equals: .commentInput)
                                .id("input_comment")
                                .onChange(of: focusedField){
                                    updateItem(from: lastFocusedField)
                                    lastFocusedField = focusedField
                                }
                                .onSubmit{
                                    saveField(field: "comments", value: commentInput)
                                }
                        } //hstack for textfields
                    .padding(.horizontal, 28)
                } // scroll view reader
            } //VStack
        } //scroll view
        .frame(maxHeight: UIScreen.main.bounds.height * 0.5)

    }
    
    func saveField(field: String, value: String){
        if !nameInput.isEmpty || !ratingInput.isEmpty || !commentInput.isEmpty {
            let newItem = watchItem(
                name: nameInput,
                rating: ratingInput,
                comments: commentInput,
                media: media,
                genre: genre)
            modelContext.insert(newItem)
            try? modelContext.save()
            
            nameInput = ""
            ratingInput = ""
            commentInput = ""
        }
    }
    
    func updateItem(from field: FocusableField?){
        switch field{
        case .nameInput:
            nameInput = nameInput
        case .ratingInput:
            ratingInput = ratingInput
        case .commentInput:
            commentInput = commentInput
        default:
            break
        }
    }
    

    
}

#Preview {
    watchList(media: "Movies", genre: "Romance")
}
