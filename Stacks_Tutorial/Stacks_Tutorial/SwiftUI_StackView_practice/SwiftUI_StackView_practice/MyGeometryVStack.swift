//
//  MyGeometryVStack.swift
//  SwiftUI_StackView_practice
//
//  Created by mac on 2021/04/21.
//

import SwiftUI

enum Index{
    case one, two, three
}

struct MyGeometryReaderVStack: View {
    
    @State var index: Index = .one
    
    var body: some View{
        
        GeometryReader{ reader in 
            VStack{
                Button(action: {
                    print("1 clicked")
                    withAnimation{
                        self.index = .one
                    }
                }, label: {
                    Text("1")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .frame(width: 100, height: reader.size.height/3)
                        .padding(.horizontal, self.index == .one ? 50 : 0)
                        .foregroundColor(.white)
                        .background(Color.red)
                })
                Button(action: {
                    print("2 clicked")
                    withAnimation{
                        self.index = .two
                    }
                }, label: {
                    Text("2")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .frame(width: 100, height: reader.size.height/3)
                        .padding(.horizontal, self.index == .two ? 50 : 0)
                        .foregroundColor(.white)
                        .background(Color.blue)
                })
                Button(action: {
                    print("3 clicked")
                    withAnimation{
                        self.index = .three
                    }
                }, label: {
                    Text("3")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .frame(width: 100, height: reader.size.height/3)
                        .padding(.horizontal, self.index == .three ? 50 : 0)
                        .foregroundColor(.white)
                        .background(Color.green)
                })
                
                
            }
        }
        .background(Color.yellow)
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}



struct MyGeometryReaderVStack_Previews: PreviewProvider {
    static var previews: some View {
        MyGeometryReaderVStack()
    }
}
