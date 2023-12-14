//
//  FeedViewModel.swift
//  CoursePhotoApp
//
//  Created by Jean Camargo on 11/12/23.
//

import Foundation
import Combine
import SwiftUI

struct Post {
    var id: UUID = UUID()
    var userImageUrl: String
    var location: String
    var username: String
    var timePostedSinceNow: String
    var postImageUrl: String
    var comentCount: Int
    var likeCount: Int
}

let postData = [
    Post(userImageUrl: "woman2", location: "London, England", username: "mile_f", timePostedSinceNow: "2 minutes ago", postImageUrl: "flower", comentCount: 3, likeCount: 5),
    Post(userImageUrl: "woman", location: "Rio de Janeiro, Brazil", username: "carmen_sandiego", timePostedSinceNow: "10 minutes ago", postImageUrl: "natal", comentCount: 3, likeCount: 5),
    Post(userImageUrl: "man2", location: "London, England", username: "lucas_p", timePostedSinceNow: "5 hours ago", postImageUrl: "sunset", comentCount: 10, likeCount: 5),
    Post(userImageUrl: "woman3", location: "New York, USA", username: "katia_s", timePostedSinceNow: "1 day ago", postImageUrl: "mergulho", comentCount: 13, likeCount: 8),
    Post(userImageUrl: "woman2", location: "Berlin, Germany", username: "mile_f", timePostedSinceNow: "1 month ago", postImageUrl: "bird", comentCount: 18, likeCount: 5)
]

class FeedViewModel: ObservableObject {
    @Published var posts: [Post]
    
    var cancellable: AnyCancellable?
    
    init() {
        self.posts = []
    }
    
    func loadPosts() {
        let subject = PassthroughSubject<[Post], Never>()
        cancellable = subject
            .sink(receiveValue: { posts in
                self.posts = posts
            })
        
        subject.send(postData)
    }
}


