//
//  ConversationsView.swift
//  Twitter_SwiftUI
//
//  Created by 김동현 on 2022/07/13.
//

import SwiftUI

struct ConversationsView: View {
    @State var isShowingNewMessageView = false
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView {
                VStack {
                    ForEach(0..<10) { _ in
                        NavigationLink(
                            destination: ChatView()) {
                                ConversationCell()
                            }
                    }
                }
                .padding()
            }
            Button {
                isShowingNewMessageView.toggle()
            } label: {
                Image(systemName: "envelope")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding()
            }
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
            .sheet(isPresented: $isShowingNewMessageView) {
                SearchView()
            }
        }
    }
}

struct ConversationsView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationsView()
    }
}
