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
    
    let editView: Bool
    
    
    var body: some View {

        let rowHeight: CGFloat = 40

        ScrollView(.vertical, showsIndicators: false) {
            ZStack(alignment: .topLeading) {
                
                VStack(spacing: 0) {
                    Color.clear
                        .frame(height: CGFloat(watchItems.count) * rowHeight)
                        .background(
                            HStack(spacing: 0) {
                                Color.clear.frame(width: 200)
                                Rectangle().frame(width: 1).foregroundStyle(.black.opacity(0.6))

                                Color.clear.frame(width: 110)
                                Rectangle().frame(width: 1).foregroundStyle(.black.opacity(0.6))

                                Color.clear.frame(width: 200)
                            }
                        )
                }

                VStack(spacing: 0) {
                    ForEach(watchItems) { item in
                        @Bindable var item = item

                        ZStack(alignment: .leading) {
                            HStack(spacing: 0) {
                                TextField("", text: $item.name)
                                    .font(.custom("RobotoMono-Medium", size: 17))
                                    .frame(width: 200, height: rowHeight)
                                    .padding(.horizontal, 8)

                                TextField("", text: $item.rating)
                                    .font(.custom("RobotoMono-Medium", size: 17))
                                    .frame(width: 100, height: rowHeight)
                                    .padding(.horizontal, 8)

                                TextField("", text: $item.comments)
                                    .font(.custom("RobotoMono-Medium", size: 17))
                                    .frame(width: 200, height: rowHeight)
                                    .padding(.horizontal, 8)
                            }

                            if editView {
                                Button(action: {
                                    modelContext.delete(item)
                                }) {
                                    Image(systemName: "minus.circle")
                                        .symbolRenderingMode(.hierarchical)
                                        .foregroundStyle(colorManager.paleText)
                                        .font(.system(size: 17))
                                }
                                .offset(x: -32)
                            }
                        }
                        .overlay(Rectangle().frame(height: 1).foregroundStyle(.black.opacity(0.6)), alignment: .bottom)
                    }
                } //vstack
            } //zstack for grid lines
            .padding(.horizontal, 35)

            HStack(spacing: 20) {
                TextField("", text: $nameInput, prompt: Text("Name").foregroundColor(.black))
                    .foregroundStyle(.black)
                    .font(.custom("RobotoMono-Medium", size: 17))
                    .opacity(0.5)
                    .frame(width: 200, height: rowHeight, alignment: .leading)
                    .focused($focusedField, equals: .nameInput)
                    .id("input_name")
                    .onChange(of: focusedField) {
                        updateItem(from: lastFocusedField)
                        lastFocusedField = focusedField
                    }
                    .onSubmit {
                        saveField(field: "name", value: nameInput)
                    }

                TextField("", text: $ratingInput, prompt: Text("Rating").foregroundColor(.black))
                    .foregroundStyle(.black)
                    .font(.custom("RobotoMono-Medium", size: 17))
                    .opacity(0.5)
                    .frame(width: 100, height: rowHeight, alignment: .leading)
                    .focused($focusedField, equals: .ratingInput)
                    .id("input_rating")
                    .onChange(of: focusedField) {
                        updateItem(from: lastFocusedField)
                        lastFocusedField = focusedField
                    }
                    .onSubmit {
                        saveField(field: "rating", value: ratingInput)
                    }

                TextField("", text: $commentInput, prompt: Text("Comments").foregroundColor(.black))
                    .foregroundStyle(.black)
                    .font(.custom("RobotoMono-Medium", size: 17))
                    .opacity(0.5)
                    .frame(width: 200, height: rowHeight, alignment: .leading)
                    .focused($focusedField, equals: .commentInput)
                    .id("input_comment")
                    .onChange(of: focusedField) {
                        updateItem(from: lastFocusedField)
                        lastFocusedField = focusedField
                    }
                    .onSubmit {
                        saveField(field: "comments", value: commentInput)
                    }
            }
            .padding(.horizontal, 28)
        }
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
    watchList(media: "Movies", genre: "Romance", editView: false)
}
