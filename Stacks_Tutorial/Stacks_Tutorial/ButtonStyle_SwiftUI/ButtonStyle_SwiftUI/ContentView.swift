//
//  ContentView.swift
//  ButtonStyle_SwiftUI
//
//  Created by mac on 2021/04/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing:30){
            Button(action: {
                print("Button Clicked")
            }, label: {
                Text("탭")
                    .fontWeight(.bold)
                    
            })
            .buttonStyle(MyButtonStyle(color: .blue, type: .tab))
            
            Button(action: {
                print("Button Clicked")
            }, label: {
                Text("롱클릭")
                    .fontWeight(.bold)
            })
            .buttonStyle(MyButtonStyle(color: .green, type: .long))
            
            Button(action: {
                print("Button Clicked")
            }, label: {
                Text("회전버튼")
                    .fontWeight(.bold)
            })
            .buttonStyle(MyRotateButtonStyle(color: .pink, type: .tab))
            
            Button(action: {
                print("Button Clicked")
            }, label: {
                Text("탭")
                    .fontWeight(.bold)
                    
            })
            .buttonStyle(MyButtonStyle(color: .blue, type: .tab))
            
            Button(action: {
                print("Button Clicked")
            }, label: {
                Text("탭")
                    .fontWeight(.bold)
                    
            })
            .buttonStyle(MyButtonStyle(color: .blue, type: .tab))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
