//
//  rowView.swift
//  amethyst
//
//  Created by Angela Wu on 3/7/25.
//
import SwiftUI

struct titleView: View {
    
    var body: some View {
        HStack(alignment: .top, spacing: 0){
            
            VStack(alignment: .leading){
                Text("My").font(Font.custom("RobotoMono-Medium", size: 60))
                    .foregroundColor(colorManager.paleText)
                    
                Text("Media").font(Font.custom("RobotoMono-Medium", size: 60))
                    .foregroundColor(colorManager.paleText)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.trailing, 5)
            
            Image(.ghibli)
                .resizable().frame(width: 145, height: 145)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
        
        Spacer()
    }
}

#Preview {
    titleView()
}
