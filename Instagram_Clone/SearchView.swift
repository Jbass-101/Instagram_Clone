//
//  SearchView.swift
//  Instagram_Clone
//
//  Created by Paulette Stevena on 2023/11/03.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            ScrollView{
                LazyVStack (spacing: 12){
                    ForEach(0...15, id: \.self){user in
                        HStack {
                            Image("image1")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40,height: 40)
                            .clipShape(Circle())
                            
                            VStack(alignment: .leading){
                                Text("Mario")
                                    .fontWeight(.semibold)
                                
                                Text("Mario Bros")
                            }.font(.footnote)
                            
                            Spacer()
                        }.padding(.horizontal)
                        
                    }
                }
                .padding(.top, 8)
                .searchable(text: $searchText, prompt: "Search")
            }
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
