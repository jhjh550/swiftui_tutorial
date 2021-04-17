//
//  MyVstackView.swift
//  Hello_SwiftUI
//
//  Created by mac on 2021/04/13.
//
import SwiftUI

struct MyVstackView: View {
    
    // 데이터 연동
    @Binding
    var isActivated: Bool
    
    // 생성자
    init(isActivated: Binding<Bool> = .constant(true)) {
        _isActivated = isActivated
    }
    
    var body: some View{
        VStack{
            Text("1")
                .font(.system(size:60))
                .fontWeight(.bold)
                .padding()
            Text("2")
                .font(.system(size:60))
                .fontWeight(.bold)
                .padding()
            Text("3")
                .font(.system(size:60))
                .fontWeight(.bold)
                .padding()
        }.background(isActivated ? Color.green : Color.red)
        .padding(isActivated ? 10 : 0)
    }
}

struct MyVstackView_Previews: PreviewProvider {
    static var previews: some View {
        MyVstackView()
    }
}

