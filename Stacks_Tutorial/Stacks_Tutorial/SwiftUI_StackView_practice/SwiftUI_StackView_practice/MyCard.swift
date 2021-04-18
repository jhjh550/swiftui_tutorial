//
//  MyCard.swift
//  SwiftUI_StackView_practice
//
//  Created by mac on 2021/04/18.
//

import SwiftUI

struct MyCard : View{
    
    var icon: String
    var title: String
    var start: String
    var end: String
    var bgColor: Color
    
    var body: some View{
        HStack(spacing:20){
//            Circle().frame(width:100, height: 100)
            Image(systemName: icon).font(.system(size: 40))
                .foregroundColor(.white)
            
            VStack(alignment: .leading, spacing:0){
                Divider().opacity(0)
//                Rectangle().frame(height:0)
                Text(title)
                    .fontWeight(.bold)
                    .font(.system(size: 24))
                    .foregroundColor(.white)
                
                Spacer().frame(height:5)
                
                Text("\(start) - \(end)")
                    .foregroundColor(.white)
            }
        }
        .padding(20)
        .background(bgColor)
        .cornerRadius(20)
    }
}


struct MyCard_PreView: PreviewProvider{
    static var previews: some View{
        MyCard(icon: "book.fill", title: "책 읽기", start: "1 PM", end: "3 PM", bgColor: Color.purple)
    }
}
