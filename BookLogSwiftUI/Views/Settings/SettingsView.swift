//
//  SettingsView.swift
//  BookLogSwiftUI
//
//  Created by Ryan Scott on 4/22/22.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State var accountIsActive: Bool = false
    @State var notificationsIsActive: Bool = false
    
    var body: some View {
        NavigationView
        {
            VStack
            {
                VStack
                {
                    AccountContainerView(width: UIScreen.main.bounds.width / 1.1, height: 75)
                }
                
                List
                {
                    SettingsListItemView(action: {
                        print("Account Button tapped")
                        accountIsActive.toggle()
                    }, backgroundColor: .blue, imageName: "key.fill", title: "Account Settings")
                    .fullScreenCover(isPresented: $accountIsActive, content: {AccountSettingsView()})
                    
                    SettingsListItemView(action: {
                        notificationsIsActive.toggle()                    }, backgroundColor: .red, imageName: "bell.fill", title: "Notifications")
                    .fullScreenCover(isPresented: $notificationsIsActive, content: {NotificationsSettingsView()})
                }
            }
            .navigationTitle("Settings")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}


