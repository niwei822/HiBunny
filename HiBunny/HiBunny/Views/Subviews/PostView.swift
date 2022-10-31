//
//  PostView.swift
//  HiBunny
//
//  Created by cecily li on 10/29/22.
//

import SwiftUI

struct PostView: View {
    
    @State var post: PostModel
    var body: some View {
        VStack(alignment: .center, spacing: 0, content: {
            //header
            HStack {
                Image("bunny1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 30, height: 30, alignment: .center)
                .cornerRadius(15)
                Text(post.username)
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(.primary)
                Spacer()
                Image(systemName: "ellipsis")
                    .font(.headline)
            }
            .padding(.all, 6)
            //image
            Image("bunny1")
                .resizable()
                .scaledToFit()
            //footer
            HStack(alignment: .center, spacing: 20, content: {
                Image(systemName: "heart")
                    .font(.title3)
                NavigationLink(destination: CommentView(), label: {
                    Image(systemName: "bubble.middle.bottom")
                        .font(.title3)
                        .foregroundColor(.primary)
                })
                
                Image(systemName: "paperplane")
                    .font(.title3)
                Spacer()
            })
            .padding(.all, 6)
            if let caption = post.caption {
            HStack {
                Text(caption)
                Spacer(minLength: 0)
            }
            .padding(.all, 6)
            }
        })
    }
}

struct PostView_Previews: PreviewProvider {
    static var post: PostModel = PostModel(postId: "", userId: "", username: "", caption: "", dateCreate: Date(), likeCount: 0, likedByUser: false)
    static var previews: some View {
        PostView(post: post)
            .previewLayout(.sizeThatFits)
    }
}
