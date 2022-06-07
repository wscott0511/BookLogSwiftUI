//
//  AccountHeaderView.swift
//  BookLogSwiftUI
//
//  Created by Ryan Scott on 5/16/22.
//

import SwiftUI

struct AccountHeaderView: View {
    var body: some View {
        HStack(alignment: .top, spacing: 12)
        {
            Image(systemName: "person")
                .resizable()
                .scaledToFit()
                .frame(width: 72, height: 72)
            
            VStack(alignment: .leading, spacing: 4)
            {
                Text("Ryan Scott")
                    .font(.title3)
                
                Text("@rscottsites")
                    .font(.callout)
                    .foregroundColor(Color.gray)
                
                Text("This is a really long bio about what books this user likes along with more about who they are as people.")
            }
            
            Spacer()
        }
        .padding(.leading)
    }
}
struct AccountHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        AccountHeaderView()
    }
}
