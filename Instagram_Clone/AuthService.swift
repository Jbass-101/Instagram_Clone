//
//  AuthService.swift
//  Instagram_Clone
//
//  Created by Paulette Stevena on 2023/11/06.
//

import Foundation
import FirebaseAuth
import FirebaseFirestoreSwift
import FirebaseFirestore

class AuthService {
    
    
    //Keep track of current session
    @Published var userSession: FirebaseAuth.User?
    @Published var currentUser: User?
    
    //Share service
    static let shared = AuthService()
    
    init(){
        Auth.auth().useEmulator(withHost: "192.168.0.195", port: 9090)
        let settings = Firestore.firestore().settings
        settings.host = "192.168.0.195:9091"
        settings.isSSLEnabled = false
        settings.isSSLEnabled = false
        Firestore.firestore().settings = settings
        
        Task {
            try await loadUserData()
        }
        
    }
    
    @MainActor
    func SignInWithEmail (email: String, password: String) async throws {
        do {
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
            try await loadUserData()
        }catch{
            print("DEBUG: Failed to log in user with error \(error.localizedDescription)")
        }
        
    }
    
    @MainActor
    func createUser(email: String, password: String, username: String ) async throws{
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
            await uploadUserData(uid: result.user.uid, email: email, username: username)
        }catch{
            print("DEBUG: Failed to register user with error \(error.localizedDescription)")
        }
        
    }
    
    @MainActor
    func loadUserData () async throws {
        
        self.userSession = Auth.auth().currentUser
        guard let currentUid = userSession?.uid else { return }
        
        let snapshot = try await Firestore.firestore().collection("InstagramUsers").document(currentUid).getDocument()
        self.currentUser = try? snapshot.data(as: User.self)
        
    }
    
    func signOut(){
        do {
                try Auth.auth().signOut()
            self.userSession = nil
            self.currentUser = nil
        }catch {
            print("DEBUG: Could not sign out \(error.localizedDescription)")
            
        }
        
    }
    
    
    private func uploadUserData(uid: String,email: String, username: String) async {
        let user = User(id: uid, email: email, username: username)
        self.currentUser = user
        guard let encodedUser = try? Firestore.Encoder().encode(user) else { return }
        try? await Firestore.firestore().collection("InstagramUsers").document(user.id).setData(encodedUser)
    }
}
    
