//
//  AccountContainerView.swift
//  BookLogSwiftUI
//
//  Created by Ryan Scott on 5/4/22.
//

import SwiftUI

struct AccountContainerView: View {
    let width: CGFloat
    let height: CGFloat
    var body: some View {
        ZStack(alignment: .leading)
        {
            RoundedRectangle(cornerRadius: 20)
                .frame(width: width, height: height)
                .foregroundColor(.white)
                .shadow(color: Color(.lightGray), radius: 2, x: 0, y: 0)
                .padding()
            
            HStack(spacing: 20) {
                Image(systemName: "person")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 44, height: 44)
                    .clipShape(Circle())
                
                VStack(alignment: .leading) {
                    Text("Ryan Scott")
                        .font(.title3)
                        .bold()
                    
                    Text("Username")
                }
            }
            .padding(.leading, 32)
        }
    }
}
