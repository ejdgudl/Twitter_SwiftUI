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
                    .padding(.bottom, 32)
                VStack(spacing: 20) {
                    CustomTextField(text: $email, placeHolder: Text("email"), imageName: "envelope")
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        .padding(.horizontal)
                        .foregroundColor(.white)
                    CustomSecureField(text: $password, placeHolder: Text("password"))
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        .padding(.horizontal)
                        .foregroundColor(.white)
                }
                .padding(.horizontal, 32)
                HStack {
                    Spacer()
                    Button {
                        
                    } label: {
                        Text("Forgot Password?")
                            .font(.footnote)
                            .bold()
                            .padding(.top, 16)
                            .padding(.trailing, 32)
                            .foregroundColor(.white)
                    }

                }
                Button {
                    
                } label: {
                    Text("Sign In")
                        .font(.headline)
                        .foregroundColor(.blue)
                        .frame(width: 360, height: 50)
                        .background(Color.white)
                        .cornerRadius(25)
                        .clipShape(Capsule())
                        .padding()
                }
                Spacer()
                HStack {
                    Text("Don't have account?")
                        .font(.system(size: 14))
                    Text("Sign Up")
                        .font(.system(size: 14, weight: .semibold))
                }
                .foregroundColor(.white)
                .padding(.bottom, 40)
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
