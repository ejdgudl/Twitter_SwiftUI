//
//  ChatView.swift
//  Twitter_SwiftUI
//
//  Created by 김동현 on 2022/07/13.
//

import SwiftUI

struct ChatView: View {
    @State var messageText: String = ""
    var body: some View {
        VStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 12) {
                    ForEach(0..<15) { _ in
                        HStack {
                            Spacer()
                            Text("Test message")
                                .padding()
                                .background(Color.blue)
                                .clipShape(ChatBubble(isFromCurrentUser: true))
                                .foregroundColor(.black)
                                .padding(.horizontal)
                        }
                    }
                }
            }
            MessageInputView(messageText: $messageText)
                .padding()
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
