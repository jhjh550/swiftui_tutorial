//
//  ContentView.swift
//  SwiftUI_StackView_practice
//
//  Created by mac on 2021/04/18.
//

import SwiftUI

struct ContentView: View {
    
    @State var isNavigationBarHidden = false
    
    var body: some View {
        
        NavigationView{
            ZStack(alignment:.bottomTrailing){
                VStack(alignment:.leading, spacing: 0){
                    HStack{
                        NavigationLink(destination: MyList(isNavigationBarHidden: $isNavigationBarHidden)){
                            Image(systemName: "line.horizontal.3")
                                .font(.largeTitle)
                                .foregroundColor(.black)
                        }
                        Spacer()
                        Image(systemName: "person.crop.circle.fill")
                            .font(.largeTitle)
                    }.padding(20)
                    
                    Text("정대리 할일 목록")
                        .font(.system(size: 40))
                        .fontWeight(.black)
                        .padding(.horizontal, 20)
                    
                    ScrollView{
                        VStack{
                            MyProjectCard()
                            MyBasicCard()
                            MyCard(icon: "tray.fill", title: "책상정리하기", start: "10 AM", end: "11 AM", bgColor: Color.blue)
                            MyCard(icon: "tv.fill", title: "영상 다시보기", start: "8 AM", end: "9 AM", bgColor: Color.blue)
                            MyCard(icon: "cart.fill", title: "마트 장보기", start: "10 AM", end: "11 AM", bgColor: Color.blue)
                            MyCard(icon: "gamecontroller.fill", title: "게임하기", start: "10 AM", end: "11 AM", bgColor: Color.blue)
                        }
                    }.padding()
                }
                
                Circle()
                    .foregroundColor(.yellow)
                    .frame(width:60, height:60)
                    .overlay(
                        Image(systemName: "plus")
                            .font(.system(size: 30))
                            .foregroundColor(.white)
                    )
                    .padding(10)
                    .shadow(radius: 20)
            }   // zstack
            .navigationTitle("메인")
            .navigationBarHidden(isNavigationBarHidden)
            .onAppear(perform: {
                isNavigationBarHidden = true
            })
        } // navigationview
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
