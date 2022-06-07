//
//  FollowingButton.swift
//  BookLogSwiftUI
//
//  Created by Ryan Scott on 5/20/22.
//

import SwiftUI

struct FollowingButton: View {
    
    let action: () -> Void
    let name: String
    let username: String
    
    var body: some View {
        Button(action: action) {
            VStack {
                HStack
                {
                    Image(systemName: "person")
                    
                    VStack(alignment: .leading)
                    {
                        Text(name)
                            .bold()
                        .foregroundColor(.black)
                        
                        Text("@" + username)
                            .foregroundColor(.black)
                            .fontWeight(.light)
                    }
                    
                    Spacer()
                    
                    Image(systemName: "chevron.right")
                        .foregroundColor(.black)
                }
                .padding([.horizontal, .top])
                
                Divider()
            }
        }
    }
}

struct FollowingButton_Previews: PreviewProvider {
    static var previews: some View {
        FollowingButton(action: {print("Followingbuttontapped")}, name: "Ryan Scott", username: "rscott")
    }
}
