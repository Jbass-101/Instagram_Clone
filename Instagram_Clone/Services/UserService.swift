//
//  UserService.swift
//  Instagram_Clone
//
//  Created by Paulette Stevena on 2023/11/07.
//

import Foundation
import Firebase

struct UserService  {
    static func fetchAllUsers()  async throws -> [User] {
//        var users = [User]()
        let snapshot = try await Firestore.firestore().collection("Users").getDocuments()
        return snapshot.documents.compactMap({ try? $0.data(as: User.self) })
        
//        let documents = snapshot.documents
//        for doc in documents {
//            guard let user = try? doc.data(as: User.self) else {return users }
//            users.append(user)
//        }
//
//        return users
    }
}
