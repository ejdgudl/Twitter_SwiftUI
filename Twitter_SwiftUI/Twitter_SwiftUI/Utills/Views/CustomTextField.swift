//
//  CustomTextField.swift
//  Twitter_SwiftUI
//
//  Created by κΉλν on 2022/07/26.
//

import SwiftUI

struct CustomTextField: View {
    @Binding var text: String
    let placeHolder: Text
    let imageName: String
    
    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty {
                placeHolder
                    .foregroundColor(.white)
                    .padding(.leading, 40)
            }
            
            HStack(spacing: 16) {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                TextField("", text: $text)
            }
        }
    }
}
