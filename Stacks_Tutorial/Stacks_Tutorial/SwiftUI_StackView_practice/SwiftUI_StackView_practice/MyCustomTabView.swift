//
//  MyCustomTabView.swift
//  SwiftUI_StackView_practice
//
//  Created by mac on 2021/04/22.
//

import SwiftUI

enum TabIndex{
    case home, cart, profile
}

struct MyCustomTabView: View{
    
    @State var tabIndex: TabIndex
    
    @State var largeScale: CGFloat = 1.4
    
    func changeMyView(tabIndex: TabIndex) -> MyView {
        switch tabIndex {
        case .home:
            return MyView(title: "홈", bgColor: Color.green)
        case .cart:
            return MyView(title: "장바구니", bgColor: Color.purple)
        case .profile:
            return MyView(title: "프로필", bgColor: Color.blue)
        default:
            return MyView(title: "홈", bgColor: Color.green)
        }
    }
    
    func changeIconColor(tabIndex: TabIndex) -> Color{
        switch tabIndex {
        case .home:
            return Color.green
        case .cart:
            return Color.purple
        case .profile:
            return Color.blue
        default:
            return Color.green
        }
    }
    
    func calcBgPosition(tabIndex: TabIndex, reader: GeometryProxy) -> CGFloat {
        switch tabIndex {
        case .home:
            return -reader.size.width/3
        case .cart:
            return 0
        case .profile:
            return reader.size.width/3
        default:
            return 0
        }
    }
    
    var body: some View{
        
        GeometryReader{ reader in
            ZStack(alignment: .bottom){
                //MyView(title: "홈", bgColor: Color.green)
                self.changeMyView(tabIndex: self.tabIndex)
                
                Circle().frame(width:90, height:90)
                    .foregroundColor(.white)
                    .offset(x: self.calcBgPosition(tabIndex: self.tabIndex, reader: reader), y:12)
                    
                
                HStack(spacing:0){
                    Button(action: {
                        print("홈 버튼 클릭")
                        withAnimation{
                            self.tabIndex = .home
                        }
                    }, label: {
                        Image(systemName: "house.fill")
                            .font(.system(size:25))
                            .scaleEffect(self.tabIndex == .home ? largeScale : 1.0)
                            .foregroundColor(self.tabIndex == .home ? changeIconColor(tabIndex: self.tabIndex) : Color.gray)
                            .frame(width: reader.size.width/3, height: 50)
                    })
                    .background(Color.white)
                    
                    Button(action: {
                        print("장바구니 버튼 클릭")
                        withAnimation {
                            self.tabIndex = .cart
                        }
                    }, label: {
                        Image(systemName: "cart.fill")
                            .font(.system(size:25))
                            .scaleEffect(self.tabIndex == .cart ? largeScale : 1.0)
                            .foregroundColor(self.tabIndex == .cart ? changeIconColor(tabIndex: self.tabIndex) : Color.gray)
                            .frame(width: reader.size.width/3, height: 50)
                    })
                    .background(Color.white)
                    
                    Button(action: {
                        print("프로필 버튼 클릭")
                        withAnimation { 
                            self.tabIndex = .profile
                        }
                        self.tabIndex = .profile
                    }, label: {
                        Image(systemName: "person.circle.fill")
                            .font(.system(size:25))
                            .scaleEffect(self.tabIndex == .profile ? largeScale : 1.0)
                            .foregroundColor(self.tabIndex == .profile ? changeIconColor(tabIndex: self.tabIndex) : Color.gray)
                            .frame(width: reader.size.width/3, height: 50)
                    })
                    .background(Color.white)
                }
                
            }
        }   .edgesIgnoringSafeArea(.all)
    }
}

struct MyCustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        MyCustomTabView(tabIndex: .home)
    }
}
