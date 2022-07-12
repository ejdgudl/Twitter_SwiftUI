//
//  ConversationCell.swift
//  Twitter_SwiftUI
//
//  Created by 김동현 on 2022/07/13.
//

import SwiftUI

struct ConversationCell: View {
    var body: some View {
        VStack {
            HStack(spacing: 12) {
                Image("venom-10")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 56, height: 56)
                    .cornerRadius(28)
                VStack(alignment: .leading, spacing: 4) {
                    Text("venom")
                        .font(.system(size: 16, weight: .semibold))
                    Text("Longer Messages text to see what happend when i do  this")

                        .font(.system(size: 15))
                        .lineLimit(2)
                }
                .foregroundColor(.black)
                .padding(.trailing)
                
            }
            Divider()
        }
    }
}

struct ConversationCell_Previews: PreviewProvider {
    static var previews: some View {
        ConversationCell()
    }
}
