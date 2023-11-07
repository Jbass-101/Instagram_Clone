//
//  SearchView.swift
//  Instagram_Clone
//
//  Created by Paulette Stevena on 2023/11/03.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    @StateObject var vm = SearchVM()
    
    var body: some View {
        NavigationStack {
            ScrollView{
                LazyVStack (spacing: 12){
                    ForEach(vm.users){user in
                        NavigationLink(value: user){
                                HStack {
                                    Image(user.profileImageUrl ?? "")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 40,height: 40)
                                    .clipShape(Circle())
                                    
                                    VStack(alignment: .leading){
                                        Text(user.username)
                                            .fontWeight(.semibold)
                                        
                                        if let fullname = user.fullname {
                                            Text(fullname)
                                        }
                                        
                                    }.font(.footnote)
                                    
                                    Spacer()
                                }
                                .padding(.horizontal)
                                .foregroundColor(.black)
                            
                        }
                        
                    }
                }
                .padding(.top, 8)
                .searchable(text: $searchText, prompt: "Search")
            }
            .navigationDestination(for: User.self, destination: { user in
                ProfileView(user: user)
            })
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
