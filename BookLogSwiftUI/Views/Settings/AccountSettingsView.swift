//
//  AccountView.swift
//  BookLogSwiftUI
//
//  Created by Ryan Scott on 5/6/22.
//

import SwiftUI

struct AccountSettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView
        {
            VStack
            {
                VStack
                {
                    ZStack
                    {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: UIScreen.main.bounds.width / 1.1, height: UIScreen.main.bounds.height / 5)
                            .foregroundColor(.white)
                        
                        Button(action: {
                            print("Change profile image button tapped")
                        }) {
                            VStack(spacing: 24) {
                                Image(systemName: "person")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 48, height: 48)
                                    .clipShape(Circle())
                                
                                Text("Change")
                                    .fontWeight(.heavy)
                            }
                        }
                    }
                    .padding(.top)
                    
                    List
                    {
                        Button(action: {
                            
                        }) {
                            HStack
                            {
                                Text("Name")
                                    .foregroundColor(.black)
                                
                                Spacer()
                                
                                Text("Edit")
                                    .fontWeight(.heavy)
                                    .foregroundColor(.blue)
                            }
                        }
                        
                        Button(action: {
                            
                        }) {
                            HStack
                            {
                                Text("Bio")
                                    .foregroundColor(.black)
                                
                                Spacer()
                                
                                Text("Edit")
                                    .fontWeight(.heavy)
                                    .foregroundColor(.blue)
                            }
                        }
                        
                        Button(action: {
                            print("edit email button tapped")
                        }) {
                            HStack
                            {
                                Text("Email")
                                    .foregroundColor(.black)
                                
                                Spacer()
                                
                                Text("Edit")
                                    .fontWeight(.heavy)
                                    .foregroundColor(.blue)
                            }
                        }
                        
                        Button(action: {
                            print("Edit password button tapped")
                        }) {
                            HStack
                            {
                                Text("Password")
                                    .foregroundColor(.black)
                                
                                Spacer()
                                
                                Text("Edit")
                                    .fontWeight(.heavy)
                                    .foregroundColor(.blue)
                            }
                        }
                    }
                }
                .background(Color(.systemGroupedBackground))
            }
            .navigationTitle("Account Settings")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarTrailing)
                {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "xmark")
                            .padding()
                            .foregroundColor(.black)
                    }
                }
            })
        }
    }
}

struct AccountSettingsView_Previews: PreviewProvider {
    static var previews: some View {
        AccountSettingsView()
    }
}
