//
//  RoundedImageView.swift
//  CoursePhotoApp
//
//  Created by Jean Camargo on 08/12/23.
//

import SwiftUI

struct RoundedImageView: View {
    var imageName: String = "natal"
    var conerRadius: CGFloat = 20
    
    var body: some View {
        Image(imageName)
            .resizable()
            .renderingMode(.original)
            .clipShape(RoundedRectangle(cornerRadius: conerRadius))
        
            
    }
}

#Preview {
    RoundedImageView()
}
