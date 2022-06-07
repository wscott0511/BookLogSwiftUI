//
//  SettingsListItemView.swift
//  BookLogSwiftUI
//
//  Created by Ryan Scott on 5/6/22.
//

import SwiftUI

struct SettingsListItemView: View {
    
    var action: () -> Void
    let backgroundColor: Color
    let imageName: String
    let title: String
    
    var body: some View {
        Button(action: action) {
            HStack
            {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 22, height: 22)
                    .padding(6)
                    .foregroundColor(.white)
                    .background(backgroundColor)
                    .cornerRadius(6)
                    
                Text(title)
                    .font(.system(size: 16))
                    .foregroundColor(.black)
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 12, height: 12)
                    .foregroundColor(.gray)
            }
        }
    }
}


