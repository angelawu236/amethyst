//
//  rowView.swift
//  amethyst
//
//  Created by Angela Wu on 3/7/25.
//
import SwiftUI

struct titleView: View {
    
    var body: some View {
        HStack(alignment: .top){
            VStack(alignment: .leading){
                Text("My").font(Font.custom("RobotoMono-Medium", size: 50))
                    
                Text("Media").font(Font.custom("RobotoMono-Medium", size: 50))
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            Image(.ghibli)
        }
        
        Spacer()
    }
}

#Preview {
    titleView()
}
