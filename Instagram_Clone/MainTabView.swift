//
//  MainTabView.swift
//  Instagram_Clone
//
//  Created by Paulette Stevena on 2023/11/03.
//

import SwiftUI

struct MainTabView: View {
    let user: User
    @State private var selectedIndex = 0
    var body: some View {
        TabView(selection: $selectedIndex){
            FeedView()
                .onAppear{
                    selectedIndex = 0
                }
                .tabItem{(Label("Feed", systemImage: "house"))}
                .tag(0)
            
            
            SearchView()
                .onAppear{
                    selectedIndex = 1
                }
                .tabItem{(Label("Feed", systemImage: "magnifyingglass"))}
                .tag(1)
            
            UploadPostView(
            tabIndex: $selectedIndex)
                .onAppear{
                    selectedIndex = 2
                }
                .tabItem{(Label("Feed", systemImage: "plus.square"))}
                .tag(2)
            
            Text("Notifications")
                .onAppear{
                    selectedIndex = 3
                }
                .tabItem{(Label("Feed", systemImage: "heart"))}
                .tag(3)
            
            CurrentUserProfileView(user: user)
                .onAppear{
                    selectedIndex = 4
                }
                .tabItem{(Label("Feed", systemImage: "person"))}
                .tag(4)
            
        }.accentColor(.black)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView(user: User.MOCK_USERS[0])
    }
}
