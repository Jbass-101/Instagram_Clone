//
//  EditProfileVM.swift
//  Instagram_Clone
//
//  Created by Paulette Stevena on 2023/11/07.
//


import PhotosUI
import SwiftUI
import Firebase

@MainActor
class EditProfileVM : ObservableObject {
    
    @Published var selectedImage: PhotosPickerItem? {
        didSet {Task {await loadImage(fromItem: selectedImage)}}
    }
    
    @Published var profileImage: Image?
    @Published var fullname = ""
    @Published var bio = ""
    
    func loadImage(fromItem item: PhotosPickerItem?) async {
        
        //Make sure we have the selected item (image)
        guard let item = item else {return}
        //Get image data
        guard let data = try? await item.loadTransferable(type: Data.self) else {return}
        
        //Create a UIimage with data
        guard let uiImage = UIImage(data: data) else {return}
        //Create Swift Image
        self.profileImage = Image(uiImage: uiImage)
        
    }
    
    
    
}
