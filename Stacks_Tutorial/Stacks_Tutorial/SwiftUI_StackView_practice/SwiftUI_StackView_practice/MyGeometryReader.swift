//
//  MyGeometryReader.swift
//  SwiftUI_StackView_practice
//
//  Created by mac on 2021/04/20.
//

import SwiftUI

struct MyGeometryReader : View {
    var body: some View{
        
        GeometryReader{ geometryReader in
            HStack(spacing: 10){
                Text("1")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .frame(width:geometryReader.size.width/3)
                    .foregroundColor(.white)
                    .background(Color.red)
                Text("2")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .frame(width:50)
                    .foregroundColor(.white)
                    .background(Color.blue)
                Text("3")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .frame(width:50)
                    .foregroundColor(.white)
                    .background(Color.green)
//                Text("4")
//                    .font(.largeTitle)
//                    .fontWeight(.bold)
//                    .frame(width:50)
//                    .foregroundColor(.white)
//                    .background(Color.purple)
            }
            .background(Color.yellow)
        }
        .background(Color.black)
        
    }
}



struct MyGeometryReader_Previews: PreviewProvider {
    static var previews: some View {
        MyGeometryReader()
    }
}
