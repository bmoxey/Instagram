//
//  Post.swift
//  Instagram
//
//  Created by Brett Moxey on 10/9/2023.
//

import Foundation

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timestamp: Date
    var user: User?
}

extension Post {
    static var MOCK_POSTS: [Post] = [
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "This is some test caption for now", likes: 123, imageUrl: "batman", timestamp: Date(), user: User.MOCK_USERS[0]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "Wakanda forever", likes: 104, imageUrl: "blackpanther", timestamp: Date(), user: User.MOCK_USERS[3]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "Iron Man", likes: 123, imageUrl: "ironman", timestamp: Date(), user: User.MOCK_USERS[2]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "Venom is hungry. Time to eat.", likes: 313, imageUrl: "venom", timestamp: Date(), user: User.MOCK_USERS[1]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "This is my next victom", likes: 313, imageUrl: "spiderman", timestamp: Date(), user: User.MOCK_USERS[1]),
    ]
}
