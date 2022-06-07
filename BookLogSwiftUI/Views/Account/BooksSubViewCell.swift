//
//  ButtonSubViewCell.swift
//  BookLogSwiftUI
//
//  Created by Ryan Scott on 5/18/22.
//

import SwiftUI

struct BooksSubViewCell: View {
    
    let action: () -> Void
    let bookTitle: String
    let bookAuthor: String
    
    var body: some View {
        VStack
        {
            Button(action: action)
            {
                HStack {
                    VStack(alignment: .leading) {
                        Text(bookTitle)
                            .font(.title3)
                            .foregroundColor(.black)
                        
                        Text(bookAuthor)
                            .fontWeight(.light)
                            .foregroundColor(.black)
                    }
                    
                    Spacer()
                    
                    Image(systemName: "chevron.right")
                        .foregroundColor(.gray)
                }
                .padding()
            }
            
            Divider()
        }
    }
}


struct BooksSubViewCell_Previews: PreviewProvider {
    static var previews: some View {
        BooksSubViewCell(action: {
            print("book cell tapped")
        }, bookTitle: "Kingdom of Ash", bookAuthor: "Sarah J Maas")
    }
}
