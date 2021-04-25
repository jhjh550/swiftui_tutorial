//
//  MyRotateButtonStyle.swift
//  ButtonStyle_SwiftUI
//
//  Created by mac on 2021/04/25.
//

import SwiftUI

struct MyRotateButtonStyle: ButtonStyle {
    
    var color: Color
    var type: ButtonType
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size: 20))
            .foregroundColor(Color.white)
            .padding()
            .background(self.color)
            .cornerRadius(20)
            .scaleEffect(configuration.isPressed ? 1.3 : 1.0)
            .opacity(configuration.isPressed ? 0.1 : 1.0)
            .rotationEffect(configuration.isPressed ? .degrees(90) : .degrees(0))
                            //, anchor: .bottomTrailing)
    }
}

struct MyRotateButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button(action: {
            print("hello world")
        }, label: {
            Text("Button")
        })
        .buttonStyle(MyRotateButtonStyle(color: .blue, type: .tab))
        
    }
}
