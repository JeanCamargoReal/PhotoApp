//
//  NavigationBarView.swift
//  CoursePhotoApp
//
//  Created by Jean Camargo on 14/12/23.
//

import SwiftUI

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

#Preview {
    NavigationBarView()
}
