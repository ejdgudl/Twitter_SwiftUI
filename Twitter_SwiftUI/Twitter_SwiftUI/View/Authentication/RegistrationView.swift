//
//  RegistrationView.swift
//  Twitter_SwiftUI
//
//  Created by 김동현 on 2022/07/26.
//

import SwiftUI

struct RegistrationView: View {
    var body: some View {
        ZStack {
            VStack {
                Image("twitter-logo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 220, height: 100)
                    .padding(.top, 88)
                Spacer()
            }
        }
        .background(Color(red: 77/255, green: 159/255, blue: 236/255, opacity: 1))
        .ignoresSafeArea()
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
