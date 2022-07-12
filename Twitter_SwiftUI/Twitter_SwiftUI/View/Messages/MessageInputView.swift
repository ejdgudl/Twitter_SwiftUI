//
//  MessageInputView.swift
//  Twitter_SwiftUI
//
//  Created by 김동현 on 2022/07/13.
//

import SwiftUI

struct MessageInputView: View {
    @Binding var messageText: String
    
    var body: some View {
        HStack {
            TextField("message...", text: $messageText)
                .textFieldStyle(.plain)
                .frame(minHeight: 30)
            Button {
                
            } label: {
                Text("Send")
            }

        }
    }
}

struct MessageInputView_Previews: PreviewProvider {
    static var previews: some View {
        MessageInputView(messageText: .constant("Message.."))
    }
}
