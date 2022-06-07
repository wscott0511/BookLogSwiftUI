//
//  NotificationsView.swift
//  BookLogSwiftUI
//
//  Created by Ryan Scott on 5/24/22.
//

import SwiftUI

struct NotificationsView: View {
    
    @StateObject var gv = GlobalVariables()
    
    var body: some View {
        NavigationView
        {
            VStack(spacing: 0)
            {
                List
                {
                    Section(header: Text("Recent"))
                    {
                        ForEach(0..<5) { item in
                            NotificationItemView()
                        }
                    }
                    
                    Section(header: Text("All"))
                    {
                        ForEach(0..<5) { item in
                            NotificationItemView()
                        }
                    }
                    
                }
            }
            .navigationTitle("Notifications")
        }
    }
}

struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView()
    }
}

