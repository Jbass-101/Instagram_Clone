//
//  User.swift
//  Instagram_Clone
//
//  Created by Paulette Stevena on 2023/11/03.
//

import Foundation
import Firebase

struct User: Identifiable, Hashable, Codable {
    let id: String
    let email: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    
    var isCurrentUser: Bool {
        guard let currentUid = Auth.auth().currentUser?.uid else {return false}
        return currentUid == id
    }
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, email: "mario@gmail.com", username:"luffy", profileImageUrl: "luffy", fullname: "Monkey D Luffy", bio: "I am a rubber man"),
        .init(id: NSUUID().uuidString, email: "venom@gmail.com", username:"zorro", profileImageUrl: "zorro", fullname: "Roa Zorro", bio: "I like playing with swords"),
        .init(id: NSUUID().uuidString, email: "iornam@gmail.com", username:"traffy", profileImageUrl: "traffy", fullname: "Trafalgar Law", bio: "I can do all sorts of fancy things"),
        .init(id: NSUUID().uuidString, email: "tonystark@gmail.com", username:"sabo", profileImageUrl: "sabo", fullname: "Sabo D Sabo", bio: "I Can burn flames"),
        .init(id: NSUUID().uuidString, email: "spiderman@gmail.com", username:"shanks", profileImageUrl: "shanks", fullname: "Shanks Banger", bio: "I wear black shirts and red capes"),
    
    ]
}
