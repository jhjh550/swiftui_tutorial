//
//  ContentView.swift
//  Image_Tutorial
//
//  Created by mac on 2021/04/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                Image("myImage")
                    .frame(height:10)
                    .offset(y:-1350)
                
                CircleImageView()
            
                HStack{
                    NavigationLink(
                        destination: MyWebView(urlToLoad: "https://www.daum.net"),
                        label: {
                            Text("DAUM")
                                .font(.system(size: 20))
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.white)
                                .padding(10)
                                .background(Color.red)
                                .cornerRadius(20)
                                
                        }
                    ).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    NavigationLink(
                        destination: MyWebView(urlToLoad: "https://www.naver.net"),
                        label: {
                            Text("NAVER")
                                .font(.system(size: 20))
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.white)
                                .padding(10)
                                .background(Color.green)
                                .cornerRadius(20)
                                
                        }
                    ).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                }
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
