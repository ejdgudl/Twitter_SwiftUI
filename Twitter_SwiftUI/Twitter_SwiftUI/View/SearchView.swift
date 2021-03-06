//
//  SearchView.swift
//  Twitter_SwiftUI
//
//  Created by κΉλν on 2022/07/10.
//

import SwiftUI

struct SearchView: View {
    @State var searchText = ""
    var body: some View {
        ScrollView {
            SearchBar(text: $searchText)
                .padding()
            VStack(alignment: .leading) {
                ForEach(0..<19) { _ in
                    HStack { Spacer() }
                    NavigationLink(
                        destination: UserProfileView()) {
                            UsersCell()
                        }
                }
            }
            .padding(.leading)
        }
        .navigationTitle("Search")
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
