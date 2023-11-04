//
//  PostGridView.swift
//  Instagram_Clone
//
//  Created by Paulette Stevena on 2023/11/04.
//

import SwiftUI

struct PostGridView: View {
    var posts : [Post]
    
    private let gridItems : [GridItem] = [
        .init(.flexible(),spacing: 1),
        .init(.flexible(),spacing: 1),
        .init(.flexible(),spacing: 1),
    ]
    
    private let imageDims: CGFloat = (UIScreen.main.bounds.width / 3) - 1
    
    var body: some View {
        //Post Grid View
        LazyVGrid(columns: gridItems, spacing: 1){
            ForEach(posts){ post in
                Image(post.imageURL)
                    .resizable()
                    .scaledToFill()
                    .frame(width: imageDims, height: imageDims)
                    .clipped()
                
            }
        }
    }
}

struct PostGridView_Previews: PreviewProvider {
    static var previews: some View {
        PostGridView(posts: Post.MOCK_POSTS)
    }
}
