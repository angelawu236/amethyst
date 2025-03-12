//
//  genres.swift
//  amethyst
//
//  Created by Angela Wu on 3/11/25.
//
import SwiftUI

struct genres: View {
    @State private var title = titles.all
    
    var body: some View {
        ScrollView(showsIndicators: false){
                    VStack (alignment: .leading, spacing:30){
                        ForEach(title){ title in
                            cards(title: title)
                        }
                    }
                                        
            }
    }
}

#Preview {
    genres()
}
