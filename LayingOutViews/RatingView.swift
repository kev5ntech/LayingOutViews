//
//  RatingView.swift
//  LayingOutViews
//
//  Created by Kevin Wong on 10/18/24.
//

import SwiftUI

struct RatingView: View {
        @Binding var value: String
        private let emojis = ["😢", "😴", "😁", "😡", "😐"]
        
        var body: some View {
            VStack {
                Text("What's your mood?")
                    .foregroundColor(.brown)
                    .font(.headline)
                HStack {
                    ForEach(emojis, id: \.self) { emoji in
                        Button {
                            value = emoji
                        } label: {
                            VStack {
                                Text(emoji)
                                    .font(.system(size: 35))
                                Image(systemName: value == emoji ? "circle.fill" : "circle")
                                    .font(.system(size: 16))
                                    .foregroundColor(.brown)
                            }
                        }
                    }
                }
            }
        }
}

struct RatingView_Previews: PreviewProvider {
    @State static var selectedEmoji: String = ""

    static var previews: some View {
        RatingView(value: $selectedEmoji)
    }
}
