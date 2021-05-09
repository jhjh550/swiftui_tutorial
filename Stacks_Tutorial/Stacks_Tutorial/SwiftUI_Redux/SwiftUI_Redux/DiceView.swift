//
//  DiceView.swift
//  SwiftUI_Redux
//
//  Created by mac on 2021/05/05.
//

import Foundation
import SwiftUI

struct DiceView: View {
    
    @EnvironmentObject var store: AppStore
    
    var body: some View{
        VStack{
            Text("⚅")
                .font(.system(size: 300, weight: .bold, design: .monospaced))
                .foregroundColor(.blue)
            Button(action: {
                print("주사위가 굴려졌다.")
            }, label: {
                Text("랜덤 주사위 굴리기")
                    .fontWeight(.black)
            })
            .buttonStyle(MyButtonStyle())
        }
        
    }
}

struct DiceView_Previews: PreviewProvider {
    static var previews: some View {
        DiceView()
    }
}
