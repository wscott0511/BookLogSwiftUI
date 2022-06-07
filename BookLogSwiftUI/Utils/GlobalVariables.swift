//
//  GlobalVariables.swift
//  BookLogSwiftUI
//
//  Created by Ryan Scott on 5/18/22.
//

import Foundation

class GlobalVariables: ObservableObject
{
    @Published var postsSelected: Bool = true
    @Published var booksSelected: Bool = false
    @Published var followingSelected: Bool = false
    
    @Published var isPresented: Bool = false
    
    @Published var isNewNotification: Bool = false
}
