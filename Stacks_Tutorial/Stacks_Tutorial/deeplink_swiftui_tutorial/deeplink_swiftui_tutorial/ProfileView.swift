//
//  ProfileView.swift
//  deeplink_swiftui_tutorial
//
//  Created by mac on 2021/05/02.
//

import Foundation
import SwiftUI

struct ProfileView: View {
    var body: some View{
        Rectangle()
            .foregroundColor(Color.init(#colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)))
            .frame(width:100, height:100)
            .cornerRadius(15)
            .overlay(
                Text("프로필")
                    .font(.system(size: 24))
                    .fontWeight(.black)
                    .foregroundColor(.white)
            )
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
