//
//  ContentView.swift
//  CoursePhotoApp
//
//  Created by Jean Camargo on 02/12/23.
//

import SwiftUI

struct FeedView: View {
    @ObservedObject var feedViewModel: FeedViewModel
    
    init(feedViewModel: FeedViewModel) {
        self.feedViewModel = feedViewModel
    }
    
    var body: some View {
        ZStack {
            VStack {
                NavigationBarView()
                VStack {
                    ScrollView {
                        ForEach(self.feedViewModel.posts.indices, id: \.self) { index in
                            CardView(post: self.feedViewModel.posts[index])
                        }
                    }
                    .padding(.bottom)
                }
                Spacer()
            }
        }
        .edgesIgnoringSafeArea(.bottom)
        .onAppear {
            self.feedViewModel.loadPosts()
        }
    }
}

#Preview {
    FeedView(feedViewModel: FeedViewModel())
}
