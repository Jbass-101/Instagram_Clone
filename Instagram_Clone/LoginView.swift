//
//  LoginView.swift
//  Instagram_Clone
//
//  Created by Paulette Stevena on 2023/11/03.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack{
            
            VStack{
                Spacer()
                
                //logo image
                Image("image2")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .scaledToFit()
                
                //text fields
                VStack{
                    TextField("Enter your email", text: $email)
                        .autocapitalization(.none)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal, 24)
                    
                    
                        SecureField("Enter your password", text: $password)
                            .font(.subheadline)
                            .padding(12)
                            .background(Color(.systemGray6))
                            .cornerRadius(10)
                            .padding(.horizontal, 24)
                    
                }
                
                //Forgot Password Button
                Button{
                    print("Show forgot password")
                    
                }label: {
                    Text("Forgot password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, 28)
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                
                
                //Login Button
                Button{
                    print("Login")
                    
                }label: {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 360,height: 44)
                        .background(Color(.systemBlue))
                        .cornerRadius(8)
                }.padding(.vertical)
                
                //Divider
                HStack{
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                    
                    Text("OR")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                }
                .foregroundColor(.gray)
                
                HStack{
                    Image("image2")
                        .resizable()
                        .frame(width: 20, height: 20)
                    
                    Text("Continue with Facebook")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(.systemBlue))
                }
                .padding(.top, 8)
                
                Spacer()
                
                Divider()
                
                NavigationLink {
                    Text("Sign up")
                } label: {
                    HStack(spacing: 3){
                        Text("Don't have an account?")
                        
                        Text("Sign Up")
                            .fontWeight(.semibold)
                    }.font(.footnote)
                }.padding(.vertical)

            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
