//
//  LoginView.swift
//  Twitter_SwiftUI
//
//  Created by 김동현 on 2022/07/26.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    var body: some View {
        ZStack {
            VStack {
                Image("twitter-logo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 220, height: 100)
                    .padding(.top, 88)
                VStack {
                    CustomTextField(text: $email, placeHolder: Text("email"))
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        .padding(.horizontal)
                        .foregroundColor(.white)
                    CustomTextField(text: $email, placeHolder: Text("password"))
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        .padding(.horizontal)
                        .foregroundColor(.white)
                }
                Spacer()
            }
        }
        .background(Color(red: 77/255, green: 159/255, blue: 236/255, opacity: 1))
        .ignoresSafeArea()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
