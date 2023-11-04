//
//  Post.swift
//  Instagram_Clone
//
//  Created by Paulette Stevena on 2023/11/04.
//

import Foundation

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUID: String
    let caption: String
    var likes: Int
    let imageURL: String
    let timestamp: Date
    var user: User?
}


extension Post {
    static var MOCK_POSTS: [Post] = [
        .init(id: NSUUID().uuidString, ownerUID: NSUUID().uuidString, caption: "Caption this boooi", likes: 4, imageURL: "post1", timestamp: Date(), user: User.MOCK_USERS[4]),
        .init(id: NSUUID().uuidString, ownerUID: NSUUID().uuidString, caption: "Enjoy the view", likes: 300, imageURL: "post2", timestamp: Date(), user: User.MOCK_USERS[2]),
        .init(id: NSUUID().uuidString, ownerUID: NSUUID().uuidString, caption: "This is just a test", likes: 5454, imageURL: "sabo", timestamp: Date(), user: User.MOCK_USERS[3]),
        .init(id: NSUUID().uuidString, ownerUID: NSUUID().uuidString, caption: "Where else have you seen such amazing stuff", likes: 321, imageURL: "luffy", timestamp: Date(), user: User.MOCK_USERS[0]),
        .init(id: NSUUID().uuidString, ownerUID: NSUUID().uuidString, caption: "This is also another test caption", likes: 12, imageURL: "zorro", timestamp: Date(), user: User.MOCK_USERS[1]),
        .init(id: NSUUID().uuidString, ownerUID: NSUUID().uuidString, caption: "Enjoy the view", likes: 300, imageURL: "post2", timestamp: Date(), user: User.MOCK_USERS[0]),
        .init(id: NSUUID().uuidString, ownerUID: NSUUID().uuidString, caption: "This is just a test", likes: 5454, imageURL: "sabo", timestamp: Date(), user: User.MOCK_USERS[0]),
    ]
}
