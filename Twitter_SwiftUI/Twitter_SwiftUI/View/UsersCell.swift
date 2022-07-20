//
//  UsersCell.swift
//  Twitter_SwiftUI
//
//  Created by 김동현 on 2022/07/10.
//

import SwiftUI

struct UsersCell: View {
    var body: some View {
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
                Text("Eddie brock")
                    .font(.system(size: 14))
            }
            .foregroundColor(.black)
        }
    }
}

struct UsersCell_Previews: PreviewProvider {
    static var previews: some View {
        UsersCell()
    }
}
