//
//  ContentView.swift
//  SwiftUI_Text
//
//  Created by mac on 2021/04/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let dateFormat: DateFormatter = {
            let formatter = DateFormatter()
            //formatter.dateFormat = "YYYY년 M월 d일"
            formatter.dateStyle = .long
            return formatter
        }()
        
        let today = Date()
        let trueOrFalse = false
        let number = 123
        
        VStack{
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
                .tracking(5)
                .font(.system(.body, design: .rounded))
                .fontWeight(.medium)
                .multilineTextAlignment(.leading)
                .lineLimit(5)
                .lineSpacing(10)
                .truncationMode(.middle)
                .shadow(color: .red, radius: 1.5, x: 5, y: 5)
                .padding()
                .background(Color.yellow)
                .cornerRadius(20)
                .padding()
            
            Text("안녕하세요")
                .background(Color.gray)
                .foregroundColor(Color.white)
            
            Text("오늘의 날짜입니다. \(today, formatter: dateFormat)")
            
            Text("참 혹은 거짓 : \(String(trueOrFalse))")
            
            Text("숫자입니다. : \(number)")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
