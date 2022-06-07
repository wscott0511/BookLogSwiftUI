//
//  TextFieldView.swift
//  BookLogSwiftUI
//
//  Created by Ryan Scott on 4/24/22.
//

import SwiftUI

struct TextFieldView: View {
    let placeholder: String
    @State var text = ""
    let width: CGFloat
    let height: CGFloat
    
    let isSecure: Bool
    let keyboard: UIKeyboardType
    
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 60)
                    .frame(width: width, height: height)
                    .foregroundColor(.clear)
                    .border(Color(.lightGray), width: 2)
                
                if isSecure == false
                {
                    TextField("", text: $text)
                        .padding(.horizontal)
                        .keyboardType(keyboard)
                } else {
                    SecureField("", text: $text)
                        .padding(.horizontal)
                        .keyboardType(keyboard)
                }
                
                HStack {
                    if text.isEmpty
                    {
                        Text(placeholder)
                    } else {
                        Text("")
                    }
                    
                    Spacer()
                }
                .padding(.horizontal)
            }
        }
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView(placeholder: "Title", width: UIScreen.main.bounds.width, height: 44, isSecure: false, keyboard: .default)
            
    }
}
