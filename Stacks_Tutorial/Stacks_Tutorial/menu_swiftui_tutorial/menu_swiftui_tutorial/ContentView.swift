//
//  ContentView.swift
//  menu_swiftui_tutorial
//
//  Created by mac on 2021/05/04.
//

import SwiftUI

let myPets =  ["멍멍이 🐶", "야옹이 🐯", "찍찍이 🐹"]

struct ContentView: View {
    
    @State private var shouldShowAlert = false
    @State private var myText = ""
    @State private var selected = 0
    
    var body: some View {
        NavigationView{
            VStack(spacing:20){
                Spacer()
                Text("\(myPets[selected])")
                    .font(.system(size:60))
                    .fontWeight(.bold)
                Text("우측 상단의 버튼을 눌러주세요.")
                Spacer()
                Spacer()
            }
            
                .padding()
                .navigationTitle("하이요")
                .toolbar(content: {
                    ToolbarItem(placement: .primaryAction, content: {
                        Menu(content: {
                            Button(action: {
                                print("오늘은 쉬는날 클릭")
                                shouldShowAlert = true
                                myText = "오늘은 쉬는날"
                            }, label: {
                                Label("오늘은 쉬는날", systemImage: "house.fill")
                            })
                            Section{
                                // 멀티 트레일링 클로져
                                Button{
                                    print("오늘도 빡코딩 버튼 클릭")
                                    shouldShowAlert = true
                                    myText = "오늘도 빡코딩~"
                                } label : {
                                    Label("오늘도 빡코딩~", systemImage: "flame.fill")
                                }
                            }
                            Picker(selection: $selected, label: Text("애완동물 선택"), content: {
                                ForEach(myPets.indices, id:\.self, content:{ index in
                                    Text("\(myPets[index])").tag(index)
                                })
                            })
                            
                        }, label: {
//                            Text("hello world")
//                            Image(systemName: "ellipsis")
                            Circle().foregroundColor(Color.init(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)))
                                .frame(width:50, height: 50)
                                .overlay(
                                    Label("더보기", systemImage: "ellipsis")
                                        .font(.system(size: 30))
                                        .foregroundColor(.white)
                                )
                            
                        })
                    })
                })
                .alert(isPresented: $shouldShowAlert, content: {
                    Alert(title: Text("알림"), message: Text("\(myText)"), dismissButton: .default(Text("확인")))
                })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
