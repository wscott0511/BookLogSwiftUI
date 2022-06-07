//
//  BooksSubView.swift
//  BookLogSwiftUI
//
//  Created by Ryan Scott on 5/18/22.
//

import SwiftUI

struct BooksSubView: View {
    var body: some View {
        VStack
        {
            ScrollView(.vertical, showsIndicators: true)
            {
                ForEach(0...7, id: \.self) { item in
                    BooksSubViewCell(action: {
                        print("BookSubViewCell Tapped")
                    }, bookTitle: "Kingdom of Ash", bookAuthor: "Sarah J Maas")
                }
            }
        }
    }
}

struct BooksSubView_Previews: PreviewProvider {
    static var previews: some View {
        BooksSubView()
    }
}
