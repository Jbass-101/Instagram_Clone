//
//  CreatePasswordView.swift
//  Instagram_Clone
//
//  Created by Paulette Stevena on 2023/11/03.
//

import SwiftUI

struct CreatePasswordView: View {
    
    
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var vm: RegistrationVM
    
    
    
    var body: some View {
        VStack(spacing: 12){
            Text("Create Password")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("Your password must be atlease 6 characters in length")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            SecureField("Password", text: $vm.password)
                .modifier(IGTextFieldModifier())
                .padding(.top)
            
            
            //Next Button
            NavigationLink{
                CompleteSignedUpView()
                    .navigationBarBackButtonHidden()
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

struct CreatePasswordView_Previews: PreviewProvider {
    static var previews: some View {
        CreatePasswordView()
    }
}
