//
//  User.swift
//  Instagram_Clone
//
//  Created by Paulette Stevena on 2023/11/03.
//

import Foundation

struct User: Identifiable, Codable {
    let id: String
    let email: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, email: "mario@gmail.com", username:"mario", profileImageUrl: "image1", fullname: "Mario Bros", bio: "This is all about me"),
        .init(id: NSUUID().uuidString, email: "venom@gmail.com", username:"plauer", profileImageUrl: "image2", fullname: "Mario Bros", bio: "This is all about me"),
        .init(id: NSUUID().uuidString, email: "iornam@gmail.com", username:"iorman", profileImageUrl: "image1", fullname: "Iron Bros", bio: "This is all about me"),
        .init(id: NSUUID().uuidString, email: "tonystark@gmail.com", username:"tony_tsar", profileImageUrl: "image1", fullname: "Test Bros", bio: "This is all about me"),
        .init(id: NSUUID().uuidString, email: "spiderman@gmail.com", username:"mario", profileImageUrl: "image1", fullname: "heaven Bros", bio: "This is all about me"),
    
    ]
}
