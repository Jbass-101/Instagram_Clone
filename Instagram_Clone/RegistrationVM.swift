//
//  RegistrationVM.swift
//  Instagram_Clone
//
//  Created by Paulette Stevena on 2023/11/06.
//

import Foundation

class RegistrationVM : ObservableObject {
    
    @Published var username = ""
    @Published var email = ""
    @Published var password = ""
    
    func createUser() async throws {
        try await AuthService.shared.createUser(email: email, password: password, username: username)
        
        username = ""
        email = ""
        password = ""
    }
    
}
