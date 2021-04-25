//
//  MyNavigationView.swift
//  SwiftUI_StackView_practice
//
//  Created by mac on 2021/04/20.
//

import SwiftUI

struct MyNavigationView: View {
    var body: some View{
        
        NavigationView{
            MyList()
                .navigationBarTitle("안녕하세요")
                .navigationBarItems(
                    leading: Button(action: {
                        print("hello world")
                    }, label: {
                        Text("Button1")
                    })
                    , trailing: NavigationLink(
                        destination:
                            Text("넘어온 화면 입니다."),
                        label: {
//                            Text("네비게이션")
                            Image(systemName: "bookmark.fill")
                                .font(.system(size: 25))
                                .foregroundColor(.black)
                        })
                )
        }
    }
}

struct MyNavigationView_Preview: PreviewProvider {
    static var previews: some View{
        MyNavigationView()
    }
}
