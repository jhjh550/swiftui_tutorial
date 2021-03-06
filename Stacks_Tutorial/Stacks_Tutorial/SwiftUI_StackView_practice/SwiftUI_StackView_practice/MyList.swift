//
//  MyList.swift
//  SwiftUI_StackView_practice
//
//  Created by mac on 2021/04/18.
//

import SwiftUI

struct MyList: View {
    init(isNavigationBarHidden: Binding<Bool> = .constant(false)){
        if #available(iOS 14.0, *){
            
        }else{
            UITableView.appearance().tableFooterView = UIView()
        }
        UITableView.appearance().separatorStyle = .none
        
        _isNavigationBarHidden = isNavigationBarHidden
    }
    
    
    @Binding var isNavigationBarHidden : Bool
    
    var body: some View{
//        List(){
//            Text("hello world")
//            Text("hello world")
//            Text("hello world")
//            Text("hello world")
//            Text("hello world")
//        }
        
//        List{
//            ForEach(1...10, id: \.self){
//                Text("hello world \($0)")
//            }
//        }
        
        List{
            Section(header:
                        Text("오늘 할일").font(.headline).foregroundColor(.black),
                    footer: Text("footer")){
                ForEach(1...3, id: \.self){ itemIndex in
                    MyCard(icon: "book.fill", title: "책 읽기\(itemIndex)", start: "1 PM", end: "3 PM", bgColor: Color.purple)
                }
            }
            .listRowInsets(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10))
            
            Section(header:
                        Text("내일 할일").font(.headline).foregroundColor(.black)){
                ForEach(1...3, id: \.self){ itemIndex in
                    MyCard(icon: "book.fill", title: "책 읽기\(itemIndex)", start: "1 PM", end: "3 PM", bgColor: Color.blue)
                }
            }
            .listRowInsets(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10))
            .listRowBackground(Color.yellow)
        }
        .navigationTitle("내 목록")
//        .navigationBarHidden(isNavigationBarHidden)
        .onAppear(perform: {
            isNavigationBarHidden = false 
        })
        .listStyle(GroupedListStyle())
//        .listStyle(PlainListStyle())
    }
}

struct MyList_Preview: PreviewProvider {
    static var previews: some View{
        MyList()
    }
}
