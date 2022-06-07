//
//  AccountTabViewModel.swift
//  BookLogSwiftUI
//
//  Created by Ryan Scott on 5/17/22.
//

import Foundation
import SwiftUI

let gv = GlobalVariables()

enum AccountTabViewModel: Int, CaseIterable
{
    case posts
    case books
    case following
    
    var title: String
    {
        switch self
        {
        case .posts:
            return "Posts"
        case .books:
            return "Books"
        case .following:
            return "Following"
        }
    }
    
    var fontColor: Color
    {
        switch self
        {
        case .posts:
            return gv.postsSelected ? .white : .black
        case .books:
            return gv.booksSelected ? .white : .black
        case .following:
            return gv.followingSelected ? .white : .black
        }
    }
    
    var backgroundColor: Color
    {
        switch self
        {
        case .posts:
            return gv.postsSelected ? .blue : .clear
        case .books:
            return gv.booksSelected ? .blue : .clear
        case .following:
            return gv.followingSelected ? .blue : .clear
        }
    }
}
