//
//  MyWebView.swift
//  SwiftUI_Webview
//
//  Created by mac on 2021/04/15.
//

import SwiftUI
import WebKit

struct MyWebView: UIViewRepresentable {
    
    var urlToLoad: String
    
    // ui view 만들기
    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: urlToLoad) else {
            return WKWebView()
        }
        
        // 웹뷰 인스턴스 생성
        let webView = WKWebView()
        webView.load(URLRequest(url: url))
        
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MyWebView>) {
        
    }
    
}

struct MyWebView_Preview: PreviewProvider{
    static var previews: some View {
        MyWebView(urlToLoad: "https://www.naver.com")
    }
}
