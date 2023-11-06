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
        
    }
    
    func loadUserData () async throws {
        
    }
    
    func signOut(){
        
    }
}
    
