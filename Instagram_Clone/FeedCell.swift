//
//  FeedCell.swift
//  Instagram_Clone
//
//  Created by Paulette Stevena on 2023/11/03.
//

import SwiftUI

struct FeedCell: View {
    let post: Post
    
    var body: some View {
        VStack{
            
            //Image + Username
            HStack{
                if let user = post.user {
                    
                    Image(user.profileImageUrl ?? "")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 40,height: 40)
                            .clipShape(Circle())
                        
                          Text(user.username)
                            .font(.footnote)
                            .fontWeight(.semibold)
                        Spacer()
                }
                
            }.padding(.leading, 8)
            
            //Post image
            Image(post.imageURL)
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipShape(Rectangle())
            
            //action buttons
            HStack{
                
                Button{
                    print("Like post")
                    
                }label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                }
                
                Button{
                    print("Comment on post")
                    
                }label: {
                    Image(systemName: "bubble.right")
                        .imageScale(.large)
                }
                
                Button{
                    print("Share post")
                    
                }label: {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
                
                Spacer()
                
            }.padding(.leading, 8)
                .padding(.top, 4)
            
            //likes label
            Text(String(post.likes) + " Likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(.leading,10)
                .padding(.top, 1)
            
            //caption label
            HStack{
                if let user = post.user {
                    
                    Text(user.username).fontWeight(.semibold)
                    
                }
                Text(post.caption)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.footnote)
            .padding(.leading, 10)
            .padding(.top, 1)
            
            //Time Stamp
            Text("6h ago")
                .font(.footnote)
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(.leading,10)
                .padding(.top, 1)
                .foregroundColor(.gray)
        }
    }
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell(post : Post.MOCK_POSTS[0])
    }
}
