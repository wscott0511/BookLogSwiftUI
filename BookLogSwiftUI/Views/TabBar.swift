//
//  TabBar.swift
//  BookLogSwiftUI
//
//  Created by Ryan Scott on 4/23/22.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView
        {
            HomeView()
                .tabItem
            {
                Image(systemName: "house")
                
                Text("Home")
            }
            
            AccountView()
                .tabItem
            {
                Image(systemName: "person")
                
                Text("Account")
            }
            
            NotificationsView()
                .tabItem {
                    Image(systemName: "bell")
                    
                    Text("Notifications")
                }
            
            SettingsView()
                .tabItem
            {
                Image(systemName: "gear")
                
                Text("Settings")
            }
        }
        .accessibilityShowsLargeContentViewer()
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
            
    }
}
