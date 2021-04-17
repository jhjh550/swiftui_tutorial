//
//  ContentView.swift
//  Hello_SwiftUI
//
//  Created by mac on 2021/04/13.
//

import SwiftUI

struct ContentView: View {
    
    // @State : 값의 변화를 감지 -> 뷰에 적용
    @State private var isActivated = false
    
    var body: some View {
        
        NavigationView{
            
            VStack{
                HStack{
                    MyVstackView(isActivated: $isActivated)
                    MyVstackView(isActivated: $isActivated)
                    MyVstackView(isActivated: $isActivated)
                }
                .padding(isActivated ? 50.0 : 10.0)
                .background(isActivated ? Color.yellow : Color.black)
                .onTapGesture {
                    // 애니매이션과 함께
                    withAnimation{
                        isActivated.toggle()
                    }
                }
                
                NavigationLink(
                    destination: MyTextView(isActivated: $isActivated),
                    label: {
                        /*@START_MENU_TOKEN@*/Text("Navigate")/*@END_MENU_TOKEN@*/
                            .font(.system(size: 50))
                            .fontWeight(.heavy)
                            .padding()
                            .background(Color.orange)
                            .foregroundColor(Color.white)
                            .cornerRadius(30)
                    })
                    .padding(.top, 50)
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
