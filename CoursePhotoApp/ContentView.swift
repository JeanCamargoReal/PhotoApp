//
//  ContentView.swift
//  CoursePhotoApp
//
//  Created by Jean Camargo on 02/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack {
                NavigationBarView()
                VStack {
                    ScrollView {
                        ForEach(1...5, id: \.self) { index in
                            CardView()
                        }
                    }
                    .padding(.bottom)
                }
                Spacer()
            }
        }.edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    ContentView()
}

struct NavigationBarView: View {
    var body: some View {
        VStack {
            HStack {
                Button(action: {}) {
                    Image(systemName: "camera")
                        .resizable()
                        .frame(width: 25, height: 20)
                }.foregroundStyle(.black)
                Spacer()
                Text("PhotoApp")
                    .font(Font.custom("Billabong", size: 28))
                Spacer()
                Button(action: {}) {
                    Image(uiImage: .woman2)
                        .resizable()
                        .renderingMode(.original)
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 36, height: 36)
                        .clipShape(.circle)
                        .shadow(color: .black.opacity(0.1), radius: 1, x: 0, y: 1)
                        .shadow(color: .black.opacity(0.2), radius: 10, x: 0, y: 10)
                }
            }
            .padding(.leading)
            .padding(.trailing)
            .padding(.top)
        }
    }
}

struct CardView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                RoundedImageView(imageName: "woman2", conerRadius: 4)
                    .frame(width: 45, height: 36)
                    .aspectRatio(contentMode: .fit)
                
                VStack(alignment: .leading) {
                    Text("mille_f")
                        .font(.footnote)
                        .fontWeight(.bold)
                    HStack {
                        Text("London, England")
                            .font(.footnote)
                            .foregroundStyle(.secondary)
                        Spacer()
                        Text("2 minutes ago")
                            .font(.footnote)
                            .foregroundStyle(.secondary)
                    }
                }
            }
            RoundedImageView(imageName: "flower")
                .frame(height: 300)
                .shadow(color: .gray, radius: 10, x: 2, y: 5)
            
            HStack(spacing: 28) {
                Button(action: {}) {
                    HStack {
                        Image(systemName: "heart")
                            .font(.headline.weight(.semibold))
                        Text("22")
                            .font(.caption)
                    }.foregroundStyle(.black)
                }
                Button(action: {}) {
                    HStack {
                        Image(systemName: "bubble.right")
                            .font(.headline.weight(.semibold))
                        Text("4")
                            .font(.caption)
                    }.foregroundStyle(.black)
                }
            }.padding(.top)
        }
        .padding(.leading)
        .padding(.trailing)
    }
}
