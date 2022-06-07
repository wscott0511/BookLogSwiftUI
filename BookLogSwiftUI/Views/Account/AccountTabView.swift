//
//  AccountTabView.swift
//  BookLogSwiftUI
//
//  Created by Ryan Scott on 5/16/22.
//

import SwiftUI

struct AccountTabView: View {
    
    let backgroundColor: Color
    let title: String
    let fontColor: Color
    let action: () -> Void
    
    var body: some View {
        
        Button(action: action) {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: UIScreen.main.bounds.width / 4,height: 44)
                    .foregroundColor(backgroundColor)
                
                Text(title)
                    .foregroundColor(fontColor)
                    .fontWeight(.bold)
            }
        }
    }
}
