//
//  MyView.swift
//  SwiftUI_StackView_practice
//
//  Created by mac on 2021/04/21.
//

import SwiftUI

struct MyView: View {
    
    var title: String
    var bgColor: Color
    
    var body: some View{
        ZStack{
            
            bgColor
                //.edgesIgnoringSafeArea(.all)
            Text(title)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(.white)
        }
        .animation(.none)
    }
}


struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        MyView(title: "마이뷰", bgColor: Color.orange)
    }
}
