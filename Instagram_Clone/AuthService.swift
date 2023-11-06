//
//  AuthService.swift
//  Instagram_Clone
//
//  Created by Paulette Stevena on 2023/11/06.
//

import Foundation
import FirebaseAuth

class AuthService {
    
    //Keep track of current session
    @Published var userSession: FirebaseAuth.User?
    
    //Share service
    static let shared = AuthService()
    
    init(){
        self.userSession = Auth.auth().currentUser
    }
    
    
    func loginWithEmail (email: String, password: String) async throws {
        
    }
    
    func createUser(email: String, password: String, username: String ) async throws{
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
        }catch{
            print("DEBUG: Failed to register user with error \(error.localizedDescription)")
        }
        
    }
    
    func loadUserData () async throws {
        
    }
    
    func signOut(){
        
    }
}
    
