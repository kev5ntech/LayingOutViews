//
//  AmazingAlignment.swift
//  LayingOutViews
//
//  Created by Kevin Wong on 10/17/24.
//

import SwiftUI

struct AmazingAlignment: View {
    var body: some View {
        VStack (alignment: .leading) {
            Image(systemName: "books.vertical.fill")
                .font(.system(size: 40))
            Rectangle().frame(maxWidth: .infinity, maxHeight: 10)
            VStack (alignment: .trailing) {
                Image(systemName: "books.vertical.fill")
                    .font(.system(size: 40))
                Rectangle().frame(maxWidth: .infinity, maxHeight: 10)
            }
            Image(systemName: "books.vertical.fill")
                    .font(.system(size: 40))
                    .frame(alignment: .leading)
            Rectangle().frame(maxWidth: .infinity, maxHeight: 10)
            VStack (alignment: .trailing) {
                HStack {
                    Image(systemName: "books.vertical.fill")
                        .font(.system(size: 40))
                    Image(systemName: "books.vertical.fill")
                        .font(.system(size: 40))
                }
                Rectangle().frame(maxWidth: .infinity, maxHeight: 10)
            }
            HStack (alignment: .top) {
                    Image(systemName: "books.vertical.fill")
                        .font(.system(size: 40))
                }
            Rectangle().frame(maxWidth: .infinity, maxHeight: 10)
        }.padding(.top)
            .frame(width: 250)
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 4)
            
    }
}

#Preview {
    AmazingAlignment()
}
