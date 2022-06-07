//
//  PostsSubView.swift
//  BookLogSwiftUI
//
//  Created by Ryan Scott on 5/16/22.
//

import SwiftUI

struct PostsSubView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: true)
        {
            CardView(image: "person", name: "Ryan Scott", bookName: "Kingdom of Ash", author: "Sarah J Maas", review: "This is such a great book! 10/10 would recommend", commentAction: {
                
            }, likeAction: {
                
            }, shareAction: {
                
            }, width: UIScreen.main.bounds.width, height: 150)
            
            CardView(image: "person", name: "Ryan Scott", bookName: "Kingdom of Ash", author: "Sarah J Maas", review: "This is such a great book! 10/10 would recommend", commentAction: {
                
            }, likeAction: {
                
            }, shareAction: {
                
            }, width: UIScreen.main.bounds.width, height: 150)
            
            CardView(image: "person", name: "Ryan Scott", bookName: "Kingdom of Ash", author: "Sarah J Maas", review: "This is such a great book! 10/10 would recommend", commentAction: {
                
            }, likeAction: {
                
            }, shareAction: {
                
            }, width: UIScreen.main.bounds.width, height: 150)
            
            CardView(image: "person", name: "Ryan Scott", bookName: "Kingdom of Ash", author: "Sarah J Maas", review: "This is such a great book! 10/10 would recommend", commentAction: {
                
            }, likeAction: {
                
            }, shareAction: {
                
            }, width: UIScreen.main.bounds.width, height: 150)
            
        }
    }
}

struct PostsSubView_Previews: PreviewProvider {
    static var previews: some View {
        PostsSubView()
    }
}
