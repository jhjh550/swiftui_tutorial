//
//  MyHStackView.swift
//  Stacks_Tutorial
//
//  Created by mac on 2021/04/17.
//

import SwiftUI

struct MyHStackView: View {
    var body: some View{
        HStack(alignment:.center){
//            Divider()
//            Rectangle()
//                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
//                .foregroundColor(.red)
            
            Image(systemName: "flame.fill")
                .foregroundColor(.white)
                .font(.system(size: 70))
            Rectangle()
                .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .foregroundColor(.yellow)
            Rectangle()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .foregroundColor(.blue)
        }
        .background(Color.green)
    }
}

struct MyHStackView_Preview: PreviewProvider{
    static var previews: some View{
        MyHStackView()
    }
}
