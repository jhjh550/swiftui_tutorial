//
//  MyProjectCard.swift
//  SwiftUI_StackView_practice
//
//  Created by mac on 2021/04/18.
//

import SwiftUI

struct MyProjectCard: View{
    
    @State var shouldShowAlert: Bool = false
    
    var body: some View{
        
        VStack(alignment:.leading, spacing:0){
            Rectangle().frame(height:0)
            Text("정대리 유툽 프로젝트")
                .font(.system(size: 24))
                .fontWeight(.black)
                .padding(.bottom, 5)
            Text("10 AM - 11 AM")
                .foregroundColor(.secondary)
            
            Spacer().frame(height:20)
            HStack{
                Image("person1").resizable().frame(width: 50, height: 50).clipShape(Circle())
                    .overlay(Circle().stroke(lineWidth: 5).foregroundColor(.blue))
                Image("person2").resizable().frame(width: 50, height: 50).clipShape(Circle())
                Image("person3").resizable().frame(width: 50, height: 50).clipShape(Circle())
                Spacer()
                
                Button(action: {
                    print("button clicked")
                    shouldShowAlert = true
                }, label: {
                    Text("확인")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width:100)
                        .background(Color.blue)
                        .cornerRadius(20)
                })
                .alert(isPresented: $shouldShowAlert, content: {
                    Alert(title: Text("알림창입니다."))
                })
                
                
            }
        }
        .padding(30)
        .background(Color.yellow)
        .cornerRadius(20)
    }
}

struct MyProjectCard_Preview: PreviewProvider{
    static var previews: some View{
        MyProjectCard()
    }
}
