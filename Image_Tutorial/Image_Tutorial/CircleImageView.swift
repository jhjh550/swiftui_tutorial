//
//  CircleImageView.swift
//  Image_Tutorial
//
//  Created by mac on 2021/04/17.
//

import SwiftUI

struct CircleImageView : View{
    var body: some View{
//        Image(systemName: "flame.fill")
//            .font(.system(size: 200))
//            .foregroundColor(.red)
//            .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 5, y: 10)
        
        Image("myImage")
            .resizable()
            .scaledToFill()
//            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 300)
            .clipShape(Circle())
            .shadow(color: .gray, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 10, y: 10)
            .overlay(Circle().foregroundColor(.black).opacity(0.3))
            .overlay(Circle().stroke(Color.red, lineWidth: 10).padding())
            .overlay(Circle().stroke(Color.blue, lineWidth: 10).padding(30))
            .overlay(Circle().stroke(Color.yellow, lineWidth: 10))
            .overlay(
                Text("hello world")
                    .foregroundColor(.white)
                    .font(.system(size: 30))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            )
            
//            .clipped()
//            .edgesIgnoringSafeArea(.all)
    }
}

struct CircleImageView_Preview: PreviewProvider {
    static var previews: some View{
        CircleImageView()
    }
}
