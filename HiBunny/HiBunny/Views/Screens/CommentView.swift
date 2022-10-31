//
//  CommentView.swift
//  HiBunny
//
//  Created by cecily li on 10/30/22.
//

import SwiftUI

struct CommentView: View {
    
    @State var submissionText: String = ""
    @State var commetArray = [CommentModel]()
    var body: some View {
        VStack {
            ScrollView {
                LazyVStack {
                    ForEach(commetArray, id:\.self) { comment in
                        MessageView(comment: comment)
                    }
                }
            }
            HStack {
                Image("bunny1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40, alignment: .center)
                    .cornerRadius(20)
                TextField("Add a comment here...", text: $submissionText)
                Button(action: {
                    
                }, label: {
                    Image(systemName: "paperplane.fill")
                        .font(.title2)
                })
                .accentColor(.purple)
            }
            .padding(.all, 6)
        }
        .navigationBarTitle("Comments")
        .navigationBarTitleDisplayMode(.inline)
        .onAppear(perform: {
            getComments()
        })
    }
    func getComments() {
        print("get comments from database")
        let comment1 = CommentModel(commentID: "", userID: "", username: "brenda", content: "first comment", dateCreated: Date())
        let comment2 = CommentModel(commentID: "", userID: "", username: "teresa", content: "second comment", dateCreated: Date())
        let comment3 = CommentModel(commentID: "", userID: "", username: "bunbun", content: "third comment", dateCreated: Date())
        let comment4 = CommentModel(commentID: "", userID: "", username: "brenda", content: "fourth comment", dateCreated: Date())
        self.commetArray.append(comment1)
        self.commetArray.append(comment2)
        self.commetArray.append(comment3)
        self.commetArray.append(comment4)
        
    }
}

struct CommentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CommentView()
        }
    }
}
