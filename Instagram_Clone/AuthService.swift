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
        Auth.auth().useEmulator(withHost: "192.168.0.195", port: 9090)
        self.userSession = Auth.auth().currentUser
    }
    
    @MainActor
    func SignInWithEmail (email: String, password: String) async throws {
        do {
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
        }catch{
            print("DEBUG: Failed to log in user with error \(error.localizedDescription)")
        }
        
    }
    
    @MainActor
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
        do {
                try Auth.auth().signOut()
            self.userSession = nil
        }catch {
            print("DEBUG: Could not sign out \(error.localizedDescription)")
            
        }
        
    }
}
    
