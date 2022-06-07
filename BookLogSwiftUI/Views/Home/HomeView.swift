//
//  HomeView.swift
//  BookLogSwiftUI
//
//  Created by Ryan Scott on 4/22/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView
        {
            VStack {
                GeometryReader
                {geometry in
                    ScrollView(.vertical, showsIndicators: false)
                    {
                        Divider()
                        VStack {
                            ForEach(0..<5) { item in
                                CardView(image: "person", name: "Ryan Scott",
                                         bookName: "Kingdom of Ash", author: "Sarah J Maas",
                                         review: "This is a great book and would 100% recommend to anyone looking for a great book to start reading",
                                         commentAction: {
                                    print("CommentButton tapped")
                                },
                                         likeAction: {
                                    print("Likebutton tapped")
                                },
                                         shareAction: {
                                    print("Sharebutton tapped")
                                },
                                         width: geometry.size.width,
                                         height: 150)
                                .padding(.top)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: AddBookView(), label: {
                        Image(systemName: "plus")
                    })

                }//trailing
                
                ToolbarItem(placement: .navigationBarLeading)
                {
                    NavigationLink(destination: ProfileView(), label: {
                        Image(systemName: "person")
                    })

                }//:leading
            }
            
            
        }
    }
}




struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
