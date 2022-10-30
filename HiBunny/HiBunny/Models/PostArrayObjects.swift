//
//  PostArrayObjects.swift
//  HiBunny
//
//  Created by cecily li on 10/29/22.
//

import Foundation

class PostArrayObject: ObservableObject {
    
    @Published var dataArray = [PostModel]()
    init() {
        let post1 = PostModel(postId: "", userId: "", username: "brenda", caption: "I love bunbun", dateCreate: Date(), likeCount: 0, likedByUser: false)
        let post2 = PostModel(postId: "", userId: "", username: "brenda", caption: "I love bunbun", dateCreate: Date(), likeCount: 0, likedByUser: false)
        let post3 = PostModel(postId: "", userId: "", username: "brenda", caption: "I love bunbun", dateCreate: Date(), likeCount: 0, likedByUser: false)
        let post4 = PostModel(postId: "", userId: "", username: "brenda", caption: "I love bunbun", dateCreate: Date(), likeCount: 0, likedByUser: false)
        self.dataArray.append(post1)
        self.dataArray.append(post2)
        self.dataArray.append(post3)
        self.dataArray.append(post4)
    }
}
