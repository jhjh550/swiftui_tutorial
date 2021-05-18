//
//  ContentView.swift
//  ObservableTest
//
//  Created by mac on 2021/05/18.
//

import SwiftUI

struct ContentView: View {
    @State private var wifiEnabled = true
    @State private var userName = ""
    
    var body: some View {
        VStack{
            Toggle(isOn: $wifiEnabled, label: {
                Text("Enable Wi-Fi")
            })
            TextField("Enter user name", text: $userName)
            Text(userName)
            WifiImageView(wifiEnabled: $wifiEnabled)
        }
    }
}

struct WifiImageView: View{
    @Binding var wifiEnabled: Bool
    var body: some View{
        Image(systemName: wifiEnabled ? "wifi" : "wifi.slash")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
