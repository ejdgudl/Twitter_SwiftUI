//
//  CustomSecureField.swift
//  Twitter_SwiftUI
//
//  Created by 김동현 on 2022/08/01.
//

import SwiftUI

struct CustomSecureField: View {
    @Binding var text: String
    let placeHolder: Text
    
    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty {
                placeHolder
                    .foregroundColor(.white)
                    .padding(.leading, 40)
            }
            
            HStack(spacing: 16) {
                Image(systemName: "lock")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                SecureField("", text: $text)
            }
        }
    }
}
