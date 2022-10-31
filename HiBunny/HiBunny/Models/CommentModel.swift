//
//  CommentModel.swift
//  HiBunny
//
//  Created by cecily li on 10/30/22.
//

import Foundation
import SwiftUI

struct CommentModel: Identifiable, Hashable {
    var id = UUID()
    var commentID: String
    var userID: String
    var username: String
    var content: String
    var dateCreated: Date
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
