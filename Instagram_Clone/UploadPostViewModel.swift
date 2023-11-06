//
//  UploadPostViewModel.swift
//  Instagram_Clone
//
//  Created by Paulette Stevena on 2023/11/04.
//

import Foundation
import PhotosUI
import SwiftUI

class UploadPostViewModel: ObservableObject {
    
    @Published var selectedImage: PhotosPickerItem? {
        didSet {Task {await loadImage(fromItem: selectedImage)}}
    }
    
    @Published var postImage: Image?
    
    func loadImage(fromItem item: PhotosPickerItem?) async {
        
        //Make sure we have the selected item (image)
        guard let item = item else {return}
        //Get image data
        guard let data = try? await item.loadTransferable(type: Data.self) else {return}
        
        //Create a UIimage with data
        guard let uiImage = UIImage(data: data) else {return}
        //Create Swift Image
        self.postImage = Image(uiImage: uiImage)
        
    }
    
    
    
    
}
