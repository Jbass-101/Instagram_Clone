//
//  LogInVM.swift
//  Instagram_Clone
//
//  Created by Paulette Stevena on 2023/11/07.
//

import Foundation

class LogInVM : ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    
    func SignIn() async throws {
        try await AuthService.shared.SignInWithEmail(email: email, password: password)
    }
    
}
