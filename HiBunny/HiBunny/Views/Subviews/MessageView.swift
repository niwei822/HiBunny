//
//  MessageView.swift
//  HiBunny
//
//  Created by cecily li on 10/30/22.
//

import SwiftUI

struct MessageView: View {
    @State var comment: CommentModel
    
    var body: some View {
        HStack {
            Image("bunny1")
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40, alignment: .center)
                .cornerRadius(20)
            VStack(alignment: .leading, spacing: 4, content: {
                Text(comment.username)
                    .font(.caption)
                    .foregroundColor(.gray)
                Text(comment.content)
                    .padding(.all, 10)
                    .foregroundColor(.primary)
                    .background(Color.gray)
                    .cornerRadius(10)
            })
            Spacer(minLength: 10)
        }
    }
}

struct MessageView_Previews: PreviewProvider {
    static var comment: CommentModel = CommentModel(commentID: "", userID: "", username: "Brenda G", content: "funnny comment", dateCreated: Date())
    static var previews: some View {
        MessageView(comment: comment)
            .previewLayout(.sizeThatFits)
    }
}
