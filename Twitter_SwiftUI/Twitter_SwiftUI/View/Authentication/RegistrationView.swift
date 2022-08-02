//
//  RegistrationView.swift
//  Twitter_SwiftUI
//
//  Created by 김동현 on 2022/07/26.
//

import SwiftUI

struct RegistrationView: View {
    @State var email = ""
    @State var password = ""
    @State var fullName = ""
    @State var userName = ""
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    var body: some View {
        ZStack {
            VStack {
                Image("plus_photo")
                    .resizable()
                    .renderingMode(.template)
                    .scaledToFill()
                    .frame(width: 140, height: 140)
                    .padding(.top, 88)
                    .padding(.bottom, 16)
                    .foregroundColor(.white)
                VStack(spacing: 20) {
                    CustomTextField(text: $email, placeHolder: Text("email"), imageName: "envelope")
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        .padding(.horizontal)
                        .foregroundColor(.white)
                    CustomTextField(text: $fullName, placeHolder: Text("Full Name"), imageName: "person")
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        .padding(.horizontal)
                        .foregroundColor(.white)
                    CustomTextField(text: $userName, placeHolder: Text("User Name"), imageName: "person")
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
                Button {
                    
                } label: {
                    Text("Sign Up")
                        .font(.headline)
                        .foregroundColor(.blue)
                        .frame(width: 360, height: 50)
                        .background(Color.white)
                        .cornerRadius(25)
                        .clipShape(Capsule())
                        .padding()
                }
                Spacer()
                Button(action: {
                    mode.wrappedValue.dismiss()
                }, label: {
                    HStack {
                        Text("Already have account?")
                            .font(.system(size: 14))
                        Text("Sign In")
                            .font(.system(size: 14, weight: .semibold))
                    }
                    .foregroundColor(.white)
                    .padding(.bottom, 40)
                })
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
