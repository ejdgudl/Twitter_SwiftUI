//
//  CustomTextField.swift
//  Twitter_SwiftUI
//
//  Created by 김동현 on 2022/07/26.
//

import SwiftUI

struct CustomTextField: View {
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
                Image(systemName: "envelope")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                TextField("", text: $text)
            }
        }
    }
}

struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextField(text: .constant(""), placeHolder: Text("email"))
    }
}
