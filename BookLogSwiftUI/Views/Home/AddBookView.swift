//
//  AddBookView.swift
//  BookLogSwiftUI
//
//  Created by Ryan Scott on 4/23/22.
//

import SwiftUI

struct AddBookView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State private var bookTitle: String = ""
    @State private var author: String = ""
    @State private var startDate: String = ""
    @State private var endDate: String = ""
    @State private var review: String = ""
    
    var isEditing: Bool = false
    
    var body: some View {
        NavigationView{
            VStack
            {
                Divider()
                    .frame(width: UIScreen.main.bounds.width)
                
                GeometryReader
                {geometry in
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack
                        {
                            TextFieldView(placeholder: "Title", text: bookTitle, width: geometry.size.width, height: 44, isSecure: false, keyboard: .default)
                            
                            TextFieldView(placeholder: "Author", text: author, width: geometry.size.width, height: 44, isSecure: false, keyboard: .default)
                            
                            TextFieldView(placeholder: "Start Date", text: startDate, width: geometry.size.width, height: 44, isSecure: false, keyboard: .default)
                            
                            TextFieldView(placeholder: "End Date", text: endDate, width: geometry.size.width, height: 44, isSecure: false, keyboard: .default)
                            
                            ZStack {
                                TextEditor(text: $review)
                                    .border(Color(.lightGray), width: 2)
                                
                                VStack {
                                    HStack {
                                        if review.isEmpty {
                                            Text("Your Review")
                                                .padding(.top, 8)
                                                .padding(.leading, 5)
                                        } else {
                                            Text("")
                                        }
                                        
                                        Spacer()
                                    }
                                    
                                    Spacer()
                                }
                            }
                            
                            Button(action: {
                                presentationMode.wrappedValue.dismiss()
                            }) {
                                Text("Save")
                                    .frame(width: geometry.size.width ,height: 44)
                                    .font(.title3)
                                    .foregroundColor(.white)
                                    .background(Color.black)
                                    .clipShape(Capsule())
                            }
                        }
                        .frame(width: geometry.size.width, height: geometry.size.height)
                    }
                }
            }
            .padding()
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("Add Book")
        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading)
            {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "trash")
                        .tint(Color.red)
                }
            } //: Leading
        }
    }
}

struct AddBookView_Previews: PreviewProvider {
    static var previews: some View {
        AddBookView()
    }
}
