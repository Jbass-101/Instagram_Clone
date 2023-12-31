//
//  AddEMailView.swift
//  Instagram_Clone
//
//  Created by Paulette Stevena on 2023/11/03.
//

import SwiftUI

struct AddEMailView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @EnvironmentObject var vm: RegistrationVM
    
    var body: some View {
        VStack(spacing: 12){
            Text("Add you email")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("You'll use this email to sign in to your account")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            TextField("Email", text: $vm.email)
                .modifier(IGTextFieldModifier())
                .padding(.top)
            
            
            //Next Button
            NavigationLink{
                CreateUsernameView()
                    .navigationBarBackButtonHidden(true)
                
            }label: {
                Text("Next")
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

struct AddEMailView_Previews: PreviewProvider {
    static var previews: some View {
        AddEMailView()
    }
}
