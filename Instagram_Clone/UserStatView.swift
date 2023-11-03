//
//  StatView.swift
//  Instagram_Clone
//
//  Created by Paulette Stevena on 2023/11/03.
//

import SwiftUI

struct UserStatView: View {
    let  value: Int
    let  title: String
    var body: some View {
        
        VStack{
            Text(String(value))
                .font(.subheadline)
                .fontWeight(.semibold)
            
            Text(title)
                .font(.footnote)
        }
    }
}

struct StatView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatView(value: 5, title: "Followers")
    }
}
