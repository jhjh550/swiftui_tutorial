//
//  ProfileImageView.swift
//  RandomUserApi_swiftui
//
//  Created by mac on 2021/05/07.
//

import Foundation
import SwiftUI
import URLImage

struct ProfileImageView: View {
    
    var imageURL: URL
    var body: some View{
        URLImage(url: imageURL,
                 content: { image in
                     image
                         .resizable()
                         .aspectRatio(contentMode: .fit)
                 })
            .frame(width:60, height: 60)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.init(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)), lineWidth: 2))
    }
}

struct ProfileImageView_Previews: PreviewProvider {
    static var previews: some View {
        let url = URL(string: "https://randomuser.me/api/portraits/women/3.jpg")!
        ProfileImageView(imageURL: url)
    }
}//
