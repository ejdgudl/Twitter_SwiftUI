//
//  UserProfileView.swift
//  Twitter_SwiftUI
//
//  Created by κΉλν on 2022/07/21.
//

import SwiftUI

struct UserProfileView: View {
    @State var selectedFilter: TweetFilterOptions = .tweets
    var body: some View {
        ScrollView {
            VStack {
                ProfileHeaderView()
                    .padding()
                FilterButtonView(selectedOption: $selectedFilter)
                    .padding()
            }
            .navigationTitle("batman")
        }
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
    }
}
