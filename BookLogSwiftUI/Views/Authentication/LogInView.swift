//
//  LogInView.swift
//  BookLogSwiftUI
//
//  Created by Ryan Scott on 4/25/22.
//

import SwiftUI

struct LogInView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    @State var isLoginTrue: Bool = false
    
    var body: some View {
        NavigationView{
            VStack
            {
                GeometryReader
                {geometry in
                    VStack {
                        Text("Login")
                            .font(.largeTitle)
                        
                        VStack
                        {
                            Spacer()
                            
                            TextFieldView(placeholder: "Email", text: email, width: geometry.size.width, height: 44, isSecure: false, keyboard: .emailAddress)
                            
                            
                            
                            TextFieldView(placeholder: "Password", text: password, width: geometry.size.width, height: 44, isSecure: true, keyboard: .default)
                            
                            Button(action: {
                                if email.isEmpty == false && password.isEmpty == false
                                {
                                    self.isLoginTrue = true
                                }
                                else
                                {
                                    print("Login is false")
                                }
                            }) {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 20)
                                        .fill(Color.clear)
                                        .frame(width: geometry.size.width, height: geometry.size.height / 14)
                                        .background(Color.black)
                                    
                                    Text("Login")
                                        .foregroundColor(Color.white)
                                }
                            }
                            .padding(.top)
                            
                            Spacer()
                            
                            HStack
                            {
                                NavigationLink(destination: RegistrationView(), label: {
                                    Text("Don't have an account?")
                                        .font(.system(size: 16, weight: .regular, design: .default))
                                        .foregroundColor(.black)
                                    
                                    Text("Signup!")
                                })
                                .font(.system(size: 16, weight: .bold, design: .default))
                                .foregroundColor(.black)
                            }
                            
                        }
//                        .padding(.trailing, 100)
                    }
                    
                }
                .padding()
            }
            .navigationBarTitleDisplayMode(.inline)
            .background(
                NavigationLink(destination: TabBar(), isActive: $isLoginTrue) {
                    EmptyView()
                }
                    .hidden()
            )
        }
        .navigationBarHidden(true)
    }
}

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}
