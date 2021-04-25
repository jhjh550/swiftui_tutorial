//
//  MyTabView.swift
//  SwiftUI_StackView_practice
//
//  Created by mac on 2021/04/21.
//

import SwiftUI

struct MyTabView: View{
    var body: some View{
        TabView{
            MyView(title: "1번", bgColor: Color.red)
                .tabItem {
                    Image(systemName: "airplane")
                    Text("일번")
                }
                .tag(0)
            MyView(title: "2번", bgColor: Color.yellow)
                .tabItem {
                    Image(systemName: "flame.fill")
                    Text("이번")
                }
                .tag(1)
            MyView(title: "3번", bgColor: Color.green)
                .tabItem {
                    Image(systemName: "doc.fill")
                    Text("삼번")
                }
                .tag(2)
        }
    }
}



struct MyTabView_Previews: PreviewProvider {
    static var previews: some View {
        MyTabView()
    }
}
