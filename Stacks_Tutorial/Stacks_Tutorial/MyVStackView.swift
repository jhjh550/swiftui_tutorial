//
//  MyVStackView.swift
//  Stacks_Tutorial
//
//  Created by mac on 2021/04/17.
//

import SwiftUI

struct MyVStackView: View{
    var body: some View{
        VStack(alignment:.trailing, spacing:0){
            
//            Rectangle()
//                .frame(height:0)
            
//            Spacer()
            
            Text("글자")
                .font(.system(size: 30))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            
//            Divider().opacity(0)
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(.red)
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(.yellow)
            Spacer().frame(height:100)
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(.blue)
            
//            Spacer()
//            Spacer()
//            Spacer()
        }
        .frame(width:300)
        .background(Color.green)
//        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct MyVStackView_Preview : PreviewProvider{
    static var previews: some View{
        MyVStackView()
    }
}
