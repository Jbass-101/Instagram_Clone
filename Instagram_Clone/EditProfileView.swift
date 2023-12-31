//
//  EditProfileView.swift
//  Instagram_Clone
//
//  Created by Paulette Stevena on 2023/11/07.
//

import SwiftUI
import PhotosUI
struct EditProfileView: View {
    @Environment(\.dismiss) var dismiss
    @State private var selectedImage: PhotosPickerItem?
    @StateObject var vm = EditProfileVM()
    
    var body: some View {
        VStack{
            //toolbar
            VStack {
                HStack{
                    Button("Cancel"){
                        dismiss()
                    }
                    Spacer()
                    
                    Text("Edit Profile")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                    Spacer()
                    
                    Button {
                        print("Update profile info")
                    } label: {
                        Text("Done")
                            .font(.subheadline)
                            .fontWeight(.bold)
                    }
                }
                .padding(.horizontal)
                
                Divider()
            }
            
            //edit profile pic
            PhotosPicker(selection: $vm.selectedImage) {
                VStack{
                    if let image = vm.profileImage {
                        image
                            .resizable()
                            .foregroundColor(.white)
                            .background(.gray)
                            .clipShape(Circle())
                            .frame(width: 80,height: 80)
                    } else {
                        Image(systemName: "person")
                            .resizable()
                            .foregroundColor(.white)
                            .background(.gray)
                            .clipShape(Circle())
                            .frame(width: 80,height: 80)
                        
                    }
                    
                    Text("Edit profile picture")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                    Divider()
                }
            }
            .padding(.vertical, 8 )
            
            //edit profile info
            VStack {
                EditProfileRowView(title: "Name", placeholder: "Enter your name..", text: $vm.fullname)
                
                
                EditProfileRowView(title: "Bio", placeholder: "Enter your bio..", text: $vm.bio)
            }
            Spacer()
        }
    }
}

struct EditProfileRowView: View {
    let title: String
    let placeholder: String
    @Binding var text: String
    
    var body: some View {
        HStack {
            Text(title)
                .padding(.leading, 8)
                .frame(width: 100, alignment: .leading)
            VStack{
                TextField(placeholder, text: $text)
                Divider()
            }
        }
        .font(.subheadline)
        .frame(height: 36)
    }
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView()
    }
}
