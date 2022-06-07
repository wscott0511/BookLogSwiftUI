//
//  RegistrationView.swift
//  BookLogSwiftUI
//
//  Created by Ryan Scott on 4/25/22.
//

import SwiftUI

struct RegistrationView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var fullname: String = ""
    @State private var username: String = ""
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView
        {
            VStack
            {
                GeometryReader
                {geometry in
                    VStack
                    {
                        Text("Registration")
                            .font(.largeTitle)
                        
                        VStack(spacing: 20)
                        {
                            Spacer()
                            
                            TextFieldView(placeholder: "Email", text: email, width: geometry.size.width, height: 44, isSecure: false, keyboard: .emailAddress)
                            
                            TextFieldView(placeholder: "Create Password", text: password, width: geometry.size.width, height: 44, isSecure: true, keyboard: .default)
                            
                            TextFieldView(placeholder: "Fullname", text: fullname, width: geometry.size.width, height: 44, isSecure: false, keyboard: .default)
                            
                            TextFieldView(placeholder: "Username", text: username, width: geometry.size.width, height: 44, isSecure: false, keyboard: .default)
                            
                            
                            
                            Button(action: {
                                print("add image button pressed")
                            }) {
                                Image(systemName: "person.crop.circle.fill.badge.plus")
                                    .resizable()
                                    .frame(width: 44, height: 44)
                            }
                            .padding(.vertical, 40)
                            
                            Button(action: {
                                
                            }) {
                                ZStack
                                {
                                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                                        .fill(Color.black)
                                        .frame(width: geometry.size.width / 1.1, height: geometry.size.height / 14)
                                    
                                    Text("Sign Up")
                                        .foregroundColor(.white)
                                }
                            }
                            
                            Spacer()
                            
                            HStack
                            {
                                Button(action: {
                                    self.presentationMode.wrappedValue.dismiss()
                                }) {
                                    Text("Have an account?")
                                        .font(.system(size: 16, weight: .regular, design: .default))
                                        .foregroundColor(.black)
                                    
                                    Text("Login!")
                                        .font(.system(size: 16, weight: .bold, design: .default))
                                        .foregroundColor(.black)
                                }
                            }
                        }
                    }
                }
                .padding()
            }
        }
        .navigationBarHidden(true)
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
