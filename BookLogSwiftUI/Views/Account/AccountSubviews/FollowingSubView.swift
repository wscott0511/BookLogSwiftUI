//
//  FollowingSubView.swift
//  BookLogSwiftUI
//
//  Created by Ryan Scott on 5/18/22.
//

import SwiftUI

struct FollowingSubView: View {
    
    @StateObject var gv = GlobalVariables()
    
    @State var isTapped: Bool = false
    
    var body: some View {
        VStack
        {
            ScrollView(.vertical, showsIndicators: true)
            {
                ForEach(1..<10) { item in
                    FollowingButton(action: {
                        print("FollowingButtonTapped")
                        gv.isPresented.toggle()
                    }, name: "Ryan Scott", username: "rscott")
                    .fullScreenCover(isPresented: $gv.isPresented, content: {ProfileView()})
                }
            }
        }
    }
}

struct FollowingSubView_Previews: PreviewProvider {
    static var previews: some View {
        FollowingSubView()
    }
}


