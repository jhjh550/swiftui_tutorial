//
//  MyZStackView.swift
//  Stacks_Tutorial
//
//  Created by mac on 2021/04/17.
//

import SwiftUI

struct MyZStackView: View{
    var body: some View{
        ZStack{
            Rectangle()
                .frame(width: 50, height: 50)
                .foregroundColor(.blue)
                .zIndex(3)
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(.red)
                .zIndex(2)
            
            Rectangle()
                .frame(width: 150, height: 150)
                .foregroundColor(.yellow)
                .zIndex(1.0)
        }
    }
}

struct MyZStackView_PreView: PreviewProvider{
    static var previews: some View{
        return MyZStackView()
    }
}
