//
//  AccountView.swift
//  BookLogSwiftUI
//
//  Created by Ryan Scott on 5/11/22.
//

import SwiftUI

struct AccountView: View{
    
    @Environment(\.presentationMode) var presentationMode
    
    @StateObject var gv = GlobalVariables()

    
    var body: some View {
        NavigationView
        {
            VStack
            {
                VStack(/*alignment: .leading*/)
                {
                    VStack
                    {
                        AccountHeaderView()
                        
                        Divider()
                        
                        HStack(alignment: .center, spacing: UIScreen.main.bounds.width / 12)
                        {
                            AccountTabView(backgroundColor: gv.postsSelected ? .blue : .clear, title: "Posts", fontColor: gv.postsSelected ? .white : .black, action: {
                                gv.postsSelected = true
                                gv.booksSelected = false
                                gv.followingSelected = false
                            })
                            
                            AccountTabView(backgroundColor: gv.booksSelected ? .blue : .clear, title: "Books", fontColor: gv.booksSelected ? .white : .black, action: {
                                gv.followingSelected = false
                                gv.postsSelected = false
                                gv.booksSelected = true
                            })
                            
                            AccountTabView(backgroundColor: gv.followingSelected ? .blue : .clear, title: "Following", fontColor: gv.followingSelected ? .white : .black, action: {
                                gv.followingSelected = true
                                gv.postsSelected = false
                                gv.booksSelected = false
                            })
                        }
                    }
                    //                    .frame(height: 500)
                    //                    .padding(.horizontal)
                    
                    Divider()
                    
                    if gv.postsSelected == true
                    {
                        PostsSubView()
                    }
                    else if gv.booksSelected == true
                    {
                        BooksSubView()
                    }
                    else if gv.followingSelected == true
                    {
                        FollowingSubView()
                    }
                } 
                
                
            }
            .navigationBarTitleDisplayMode(.large)
            .navigationTitle("Account")
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}


