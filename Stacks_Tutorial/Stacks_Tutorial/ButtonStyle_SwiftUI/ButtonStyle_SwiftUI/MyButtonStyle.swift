//
//  MyButtonStyle.swift
//  ButtonStyle_SwiftUI
//
//  Created by mac on 2021/04/25.
//

import SwiftUI

enum ButtonType{
    case tab
    case long
//    case smaller
//    case rotate
//    case blur
}

struct MyButtonStyle: ButtonStyle {
    
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
            .onTapGesture {
                if(self.type == .tab){
                    let haptic = UIImpactFeedbackGenerator(style: .light)
                    haptic.impactOccurred()
                }
            }
            .onLongPressGesture {
                if(self.type == .tab){
                    let haptic = UIImpactFeedbackGenerator(style: .heavy)
                    haptic.impactOccurred()
                }
            }
    }
}

struct MyButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button(action: {
            print("button clicked")
        }, label: {
            Text("hello world")
        })
        .buttonStyle(MyButtonStyle(color: .blue, type: .tab))
    }
}
