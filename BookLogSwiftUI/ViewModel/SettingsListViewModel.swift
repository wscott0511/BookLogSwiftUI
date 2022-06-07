//
//  SettingsListViewModel.swift
//  BookLogSwiftUI
//
//  Created by Ryan Scott on 5/6/22.
//

import Foundation
import SwiftUI

enum SettingsListViewModel: Int, CaseIterable
{   
    case account
    case notifications
    
    var title: String
    {
        switch self
        {
        case .account:
            return "Account"
        case .notifications:
            return "Notifications"
        }
    }
    
    var imageName: String
    {
        switch self
        {
        case .account:
            return "key.fill"
        case .notifications:
            return "bell.fill"
        }
    }
    
    var backgroundColor: Color
    {
        switch self
        {
        case .account:
            return .blue
        case .notifications:
            return .red
        }
    }
    
    var action: () -> Void
    {
        switch self
        {
        case .account:
            return {
                print("Account button tapped")
                
                    
            }
        case .notifications:
            return {
                print("Notifications button tapped")
            }
        }
    }
}
