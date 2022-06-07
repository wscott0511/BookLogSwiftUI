//
//  NotificationItemView.swift
//  BookLogSwiftUI
//
//  Created by Ryan Scott on 6/2/22.
//

import SwiftUI

struct NotificationItemView: View {
    var body: some View {
        NavigationLink(destination: Text("Notification")) {
            HStack(alignment: .top, spacing: 12)
            {
                Image(systemName: "bell.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                
                VStack(alignment: .leading)
                {
                    HStack
                    {
                        Text("Name")
                            .fontWeight(.semibold)
                        
                        Spacer()
                        
                        if gv.isNewNotification == true
                        {
                            Circle()
                                .frame(width: 16, height: 16)
                                .foregroundColor(.indigo)
                        }
                        else
                        {
                            EmptyView()
                        }
                        
                    }
                    
                    Text("Notification text goes here and will be quite verbose!")
                }
        }
        }
    }
}


struct NotificationItemView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationItemView()
    }
}
