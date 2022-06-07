//
//  BookLogSwiftUIApp.swift
//  BookLogSwiftUI
//
//  Created by Ryan Scott on 4/22/22.
//

import SwiftUI
import Firebase

@main
struct BookLogSwiftUIApp: App {
    
    init()
    {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            TabBar()
            
        }
    }
}
