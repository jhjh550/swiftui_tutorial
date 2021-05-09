//
//  ContentView.swift
//  RandomUserApi_swiftui
//
//  Created by mac on 2021/05/07.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var randomUserViewModel = RandomUserViewModel()
    
    
    var body: some View {
        List(randomUserViewModel.randomUsers){ aRandomUser in
            RandomUserRomView(aRandomUser)
        }
//        List(0...200, id:\.self){ index in
//            RandomUserRomView()
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
