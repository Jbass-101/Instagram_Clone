//
//  MainTabView.swift
//  Instagram_Clone
//
//  Created by Paulette Stevena on 2023/11/03.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
            FeedView()
                .tabItem{(Label("Feed", systemImage: "house"))}
            
            
            SearchView()
                .tabItem{(Label("Feed", systemImage: "magnifyingglass"))}
            
            Text("Upload post")
                .tabItem{(Label("Feed", systemImage: "plus.square"))}
            
            Text("Notifications")
                .tabItem{(Label("Feed", systemImage: "heart"))}
            
            CurrentUserProfileView()
                .tabItem{(Label("Feed", systemImage: "person"))}
        }.accentColor(.black)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
