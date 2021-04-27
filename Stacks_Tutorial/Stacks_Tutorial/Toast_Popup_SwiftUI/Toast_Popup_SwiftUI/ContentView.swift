//
//  ContentView.swift
//  Toast_Popup_SwiftUI
//
//  Created by mac on 2021/04/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var shouldShowBottomSolidMessage = false
    @State var shouldShowBottomToastMessage = false
    
    func createBottomSolidMessage() -> some View {
        HStack(spacing:0){
            Image(systemName: "book.fill")
                .font(.system(size: 40))
            VStack(alignment:.leading){
                Text("안내 메세지").fontWeight(.black)
                Text("Toast Message")
                    .lineLimit(2)
                    .font(.system(size: 14))
                Divider().opacity(0)
                
            }
        }
        .padding(.vertical, 5)
        .padding(.horizontal, 10)
        .frame(width:UIScreen.main.bounds.width)
        .padding(.bottom, UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 0 : 15)
        .background(Color.purple)
        .foregroundColor(.white)
    }
    
    func createBottomToastMessage() -> some View{
        HStack(alignment: .top, spacing:10){
            Image("myImage")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .offset(y:-10)
                .frame(width:60, height: 60)
                .cornerRadius(10)
            
            VStack(alignment:.leading){
                Text("안내 메세지").fontWeight(.black)
                Text("Toast Message")
                    .lineLimit(2)
                    .font(.system(size: 14))
                Divider().opacity(0)
                
            }
        }
        .padding(15)
        .frame(width:300)
        .background(Color.green)
        .foregroundColor(.white)
        .cornerRadius(20)
    }
    
    var body: some View {
        ZStack{
            VStack{
                Spacer()
                
                Button(action: {
                    self.shouldShowBottomSolidMessage = true
                }, label: {
                    Text("Bottom Solid Message")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.purple)
                        .cornerRadius(10)
                })
                Button(action: {
                    self.shouldShowBottomToastMessage = true
                }, label: {
                    Text("Bottom Toast Message")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(10)
                })
                
                Spacer()
                
                
                
            }
        }
        .ignoresSafeArea()
        .popup(isPresented: $shouldShowBottomSolidMessage, type: .toast, position: .bottom, animation: .default, autohideIn: 2, closeOnTap: true, closeOnTapOutside: true, dismissCallback: {}, view: {
                createBottomSolidMessage()
        })
        .popup(isPresented: $shouldShowBottomToastMessage, type: .floater(verticalPadding: 20), position: .bottom, animation: .spring(), autohideIn: 2, closeOnTap: true, closeOnTapOutside: true, dismissCallback: {}, view: {
                createBottomToastMessage()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
