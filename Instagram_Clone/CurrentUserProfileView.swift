//
//  CurrentUserProfileView.swift
//  Instagram_Clone
//
//  Created by Paulette Stevena on 2023/11/04.
//

import SwiftUI

struct CurrentUserProfileView: View {
    
    
    
    private let gridItems : [GridItem] = [
        .init(.flexible(),spacing: 1),
        .init(.flexible(),spacing: 1),
        .init(.flexible(),spacing: 1),
    ]
    
    
    var body: some View {
        NavigationStack {
            ScrollView{
                //Header
                VStack {
                    //Pic and Stats
                    HStack(){
                        Image("image2")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80,height: 80)
                            .clipShape(Circle())
                        
                        Spacer()
                        
                        
                        
                        
                        Spacer()
                        
                        UserStatView(value: 5, title: "Posts")
                        
                        Spacer()
                        
                        UserStatView(value: 5, title: "Followers")
                        
                        
                        Spacer()
                        
                        UserStatView(value: 5, title: "Following")
                        
                    }
                    .frame(width: .infinity)
    //                .padding(.horizontal)
                    //Name and Bio
                    VStack(alignment:.leading, spacing: 4){
                        Text("Bass Boy")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Text("Eat | Sleep | Play Bass")
                            .font(.footnote)
                    }
                    .frame(maxWidth :.infinity, alignment: .leading)
    //                .padding(.horizontal)÷÷
                    
                    //Action Button
                    Button{
                        
                    }label: {
                        Text("Edit Profile")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width:360, height: 32)
                            .foregroundColor(.black)
                            .overlay(
                                RoundedRectangle(
                                    cornerRadius: 6)
                                .stroke(Color.gray,lineWidth: 1)
                            )
                    }
                    
                    Divider()
                }
                .padding(.horizontal)
                
                //Post Grid View
                LazyVGrid(columns: gridItems, spacing: 1){
                    ForEach(0...10,id: \.self){ index in
                        Image("image1")
                            .resizable()
                            .scaledToFill()
                        
                    }
                }
                
                
                
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button{
                        
                    }label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(.black)
                    }
                }
            }
        }
    }
}

struct CurrentUserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentUserProfileView()
    }
}
