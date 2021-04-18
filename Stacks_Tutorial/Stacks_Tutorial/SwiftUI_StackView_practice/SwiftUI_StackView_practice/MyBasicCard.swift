//
//  MyBasicCard.swift
//  SwiftUI_StackView_practice
//
//  Created by mac on 2021/04/18.
//

import SwiftUI

struct MyBasicCard : View{
    var body: some View{
        HStack(spacing:20){
//            Circle().frame(width:100, height: 100)
            Image(systemName: "flag.fill").font(.system(size: 40))
                .foregroundColor(.white)
            
            VStack(alignment: .leading, spacing:0){
                Divider().opacity(0)
//                Rectangle().frame(height:0)
                Text("hello world")
                    .fontWeight(.bold)
                    .font(.system(size: 24))
                    .foregroundColor(.white)
                
                Spacer().frame(height:5)
                
                Text("hello world")
                    .foregroundColor(.white)
            }
            
        }
        .padding(20)
        .background(Color.purple)
        .cornerRadius(20)
    }
}

struct MyBasicCard_Preview: PreviewProvider{
    static var previews: some View{
        MyBasicCard()
    }
}
