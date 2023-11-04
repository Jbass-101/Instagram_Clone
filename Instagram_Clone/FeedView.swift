//
//  FeedView.swift
//  Instagram_Clone
//
//  Created by Paulette Stevena on 2023/11/03.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView{
                LazyVStack(spacing: 32){
                    ForEach(Post.MOCK_POSTS){ post in
                        FeedCell(post: post)
                        
                    }
                }
                .padding(.top, 8)
            }
            .navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    Image("image2")
                        .resizable()
                        .frame(width: 38,height: 38)
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    Button{
                        
                    }label: {
                        Image(systemName: "paperplane")
                            .foregroundColor(.black)
                            .imageScale(.large)
                    }
                }
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
