//
//  NewMessageView.swift
//  Twitter_SwiftUI
//
//  Created by κΉλν on 2022/07/20.
//

import SwiftUI

struct NewMessageView: View {
    @State var searchText = ""
    @Binding var show: Bool
    
    var body: some View {
        ScrollView {
            SearchBar(text: $searchText)
                .padding()
            VStack(alignment: .leading) {
                ForEach(0..<10) { _ in
                    HStack {Spacer()}
                    Button {
                        self.show.toggle()
                    } label: {
                        UsersCell()
                    }

                }
            }
        }
    }
}

struct NewMessageView_Previews: PreviewProvider {
    static var previews: some View {
        NewMessageView(show: .constant(true))
    }
}
