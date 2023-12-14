//
//  CardView.swift
//  CoursePhotoApp
//
//  Created by Jean Camargo on 14/12/23.
//

import SwiftUI

struct CardView: View {
    var post: Post
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                RoundedImageView(imageName: post.userImageUrl, conerRadius: 4)
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 40, height: 40)
                    .clipped()
                    .clipShape(RoundedRectangle(cornerRadius: 4))
                
                VStack(alignment: .leading) {
                    Text(post.username)
                        .font(.footnote)
                        .fontWeight(.bold)
                    HStack {
                        Text(post.location)
                            .font(.footnote)
                            .foregroundStyle(.secondary)
                        Spacer()
                        Text(post.timePostedSinceNow)
                            .font(.footnote)
                            .foregroundStyle(.secondary)
                    }
                }
            }
            RoundedImageView(imageName: post.postImageUrl)
                .frame(height: 300)
                .shadow(color: .gray, radius: 5, x: 2, y: 2)
            
            HStack(spacing: 28) {
                Button(action: {}) {
                    HStack {
                        Image(systemName: "heart")
                            .font(.headline.weight(.semibold))
                        Text("\(post.likeCount)")
                            .font(.caption)
                    }.foregroundStyle(.black)
                }
                Button(action: {}) {
                    HStack {
                        Image(systemName: "bubble.right")
                            .font(.headline.weight(.semibold))
                        Text("\(post.comentCount)")
                            .font(.caption)
                    }.foregroundStyle(.black)
                }
            }
            .padding(.top, 4)
            .padding(.bottom)
        }
        .padding(.leading)
        .padding(.trailing)
    }
}

#Preview {
    CardView(post: Post(userImageUrl: "woman2", location: "London, UK", username: "mille_f", timePostedSinceNow: "2 minutes ago", postImageUrl: "flower", comentCount: 10, likeCount: 43))
}
