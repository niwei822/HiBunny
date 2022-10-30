//
//  PostModel.swift
//  HiBunny
//
//  Created by cecily li on 10/29/22.
//

import Foundation
import SwiftUI

struct PostModel: Identifiable, Hashable {
     
    var id = UUID()
    var postId: String
    var userId: String
    var username: String
    var caption: String?
    var dateCreate: Date
    var likeCount: Int
    var likedByUser: Bool
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
