//
//  CompleteSignedUpView.swift
//  Instagram_Clone
//
//  Created by Paulette Stevena on 2023/11/03.
//

import SwiftUI

struct CompleteSignedUpView: View {
    
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 12){
            
            Spacer()
            
            Text("Welcome to Instagram, Paulette")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
                .multilineTextAlignment(.center)
            
            Text("Click below to complete registration and start using instagram")
                .font(.footnote)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            //Next Button
            Button{
                print("Complete sign up")
                
            }label: {
                Text("Complete Sign Up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 360,height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(8)
            }
            .padding(.vertical)
            
            Spacer()
        }
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading){
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .onTapGesture {
                        dismiss()
                    }
            }
        }
        
    }
}

struct CompleteSignedUpView_Previews: PreviewProvider {
    static var previews: some View {
        CompleteSignedUpView()
    }
}
