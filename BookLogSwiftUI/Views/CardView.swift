//
//  CardView.swift
//  BookLogSwiftUI
//
//  Created by Ryan Scott on 4/22/22.
//

import SwiftUI

struct CardView: View {
    
    let image: String
    let name: String
    let bookName: String
    let author: String
    let review: String
    let commentAction: () -> Void
    let likeAction: () -> Void
    let shareAction: () -> Void
    
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        ZStack
        {
            Rectangle()
                .frame(width: width, height: height)
                .foregroundColor(.clear)
            //                .border(.black, width: 2)
            
            VStack(alignment: .leading)
            {
                HStack(spacing: 10)
                {
                    VStack {
                        ZStack {
                            Circle()
                                .frame(width: 44, height: 44)
                                .padding(.bottom, 44)
                                .padding(.leading)
                                .foregroundColor(.gray)
                            Image(systemName: image)
                                .padding(.bottom, 44)
                                .padding(.leading)
                        }
                    }
                    .padding(.top)
                    
                    VStack(alignment: .leading)
                    {
                        Text(name)
                            .font(.system(size: 18, weight: .medium, design: .default))
                        
                        Text(bookName)
                            .font(.system(size: 16, weight: .regular))
                        
                        Text(author)
                            .font(.system(size: 16, weight: .thin))
                            .foregroundColor(.black)
                        
                        Text(review)
                            .font(.system(size: 16, weight: .regular))
                    }
                }
                
                HStack(spacing: 20)
                {
                    Button(action: commentAction) {
                        Image(systemName: "text.bubble")
                    }

                    Button(action: likeAction) {
                        Image(systemName: "hand.thumbsup")
                    }

                    Button(action: shareAction) {
                        Image(systemName: "arrowshape.turn.up.right")
                    }
                }
                .padding(.leading, 65)
                
                Divider()
                    .padding(.top)
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(image: "person",
                 name: "Ryan Scott",
                 bookName: "Cresnt City",
                 author: "Sarah J Maas",
                 review: "Amazing Book",
                 commentAction: {
            print("CommentButton Tapped")
        },
                 likeAction: {
            print("LikeButton Tapped")
        },
                 shareAction: {
            print("ShareButton Tapped")
        },
                 width: .infinity,
                 height: 150)
        .previewDevice("iPhone 12 mini")
    }
}
