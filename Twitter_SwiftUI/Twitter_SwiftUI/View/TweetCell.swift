//
//  TweetCell.swift
//  Twitter_SwiftUI
//
//  Created by κΉλν on 2022/07/10.
//

import SwiftUI

struct TweetCell: View {
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                Image("batman")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 56, height: 56)
                    .cornerRadius(56 / 2)
                    .padding(.leading)
                
                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        Text("Bruce Wayne")
                            .font(.system(size: 14, weight: .semibold))
                        Text("@batman β’")
                            .foregroundColor(.gray)
                        Text("2w")
                            .foregroundColor(.gray)
                    }
                    Text("It's not who i am underneath, but what i do that defines me")
                }
            }
            .padding(.bottom)
            .padding(.trailing)
            HStack {
                Button {} label: {
                    Image(systemName: "bubble.left")
                        .font(.system(size: 16))
                        .frame(width: 32, height: 32)
                }
                Spacer()
                Button {} label: {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.system(size: 16))
                        .frame(width: 32, height: 32)
                }
                Spacer()
                Button {} label: {
                    Image(systemName: "heart")
                        .font(.system(size: 16))
                        .frame(width: 32, height: 32)
                }
                Spacer()
                Button {} label: {
                    Image(systemName: "bookmark")
                        .font(.system(size: 16))
                        .frame(width: 32, height: 32)
                }
            }
            .foregroundColor(.gray)
            .padding(.horizontal)
            Divider()
        }
        .padding(.leading, -16)
    }
}

struct TweetCell_Previews: PreviewProvider {
    static var previews: some View {
        TweetCell()
    }
}
