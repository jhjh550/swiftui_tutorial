//
//  ContentView.swift
//  Swiftui_lazyVGrid
//
//  Created by mac on 2021/05/05.
//

import SwiftUI

struct MyModel: Identifiable{
    let id = UUID()
    let title: String
    let content: String
}

extension MyModel{
    static var dummyDataArray:[MyModel]{
        (1...2000).map{ (number: Int) in
            return MyModel(title: "타이틀 \(number)", content: "컨텐트 \(number)")
        }
    }
}

struct ContentView: View {
    
    var dummyDataArray = MyModel.dummyDataArray
    
    var body: some View {
        
        // 스크롤 뷰로 감싸서 스크롤 가능하도록 설정
        ScrollView{
            // column 은 horizontal item layout 을 설정하는 방법
            // grid item option 은 세가지
            // fixed : 고정
            // adaptive : 여러개 채우기 - 계산해서 분할로 채우기
            // flexible : 하나만 채우기
            LazyVGrid(columns: [
                GridItem(.fixed(50)),
                GridItem(.adaptive(minimum: 50)),
                GridItem(.flexible(minimum: 50))
            ],  spacing: 100, content: {
                ForEach(dummyDataArray, content:{ (dataItem: MyModel) in
                    Rectangle().foregroundColor(.blue).frame(height:120)
                        .overlay(Text("\(dataItem.title)"))
                })
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
