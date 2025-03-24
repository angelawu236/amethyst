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
    
    let media: String
    let genre: String
    
    var body: some View {
        ForEach(watchItems){item in
            Text(item.name)
        }
        let name = nameInput
        let rating = ratingInput
        let comment = commentInput


        HStack {
            Spacer()
            HStack(spacing: 20) {                TextField("Name", text: $nameInput)
                    .frame(width: 100)
                
                TextField("Rating", text: $ratingInput)
                    .frame(width: 100)

                TextField("Comment", text: $commentInput)
                    .frame(width: 100)
            }
            Spacer()
        }
    }

}

func saveField(field: String, value: String){
    
}

#Preview {
    watchList(media: "Movies", genre: "Romance")
}
