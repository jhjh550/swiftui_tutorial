//
//  MyTextView.swift
//  Hello_SwiftUI
//
//  Created by mac on 2021/04/14.
//

import SwiftUI

struct MyTextView : View {
    
    // 데이터 연동
    @Binding
    var isActivated: Bool
    
    // 생성자
    init(isActivated: Binding<Bool> = .constant(false)) {
        _isActivated = isActivated
    }
    
    
    // @State : 값의 변화를 감지 -> 뷰에 적용
    @State private var index = 0
    
    // 배경 색상 배열
    private let backgroundColors = [
        Color.red, Color.blue, Color.green, Color.yellow, Color.orange
    ]
    
    var body: some View{
        VStack{
            Spacer()
            Text("배경 아이템 인덱스 \(self.index)")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 100)
            
            Text("Activated State : \(String(isActivated))")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .foregroundColor(isActivated ? Color.yellow : Color.gray)
                .background(Color.black)
            
            Spacer()
        }
        .background(backgroundColors[index])
        .edgesIgnoringSafeArea(.all)
        .onTapGesture {
            print("Background Item Clicked.")
            self.index += 1
            self.index = self.index % 5
        }
    }
}


struct MyTextView_Previews: PreviewProvider {
    static var previews: some View {
        MyTextView()
    }
}
