//
//  watchList.swift
//  amethyst
//
//  Created by Angela Wu on 3/20/25.
//

import SwiftUI

struct watchList: View {
    @State private var nameInput: String = ""
    @State private var ratingInput: String = ""
    @State private var commentInput: String = ""
    
    var body: some View {
        HStack {
            Spacer()
            HStack(spacing: 20) {
                TextField("Name", text: $nameInput)
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

#Preview {
    watchList()
}
