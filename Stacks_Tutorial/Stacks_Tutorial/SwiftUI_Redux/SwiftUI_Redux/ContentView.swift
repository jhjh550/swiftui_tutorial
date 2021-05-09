//
//  ContentView.swift
//  SwiftUI_Redux
//
//  Created by mac on 2021/05/05.
//

import SwiftUI

struct ContentView: View {
    
    let store = AppStore(state: AppState.init(currentDice: "⚀"), reducer: appReducer(_:_:))
    var body: some View {
        // 서브뷰에 옵저버블 오브젝트를 연결한다.
        DiceView().environmentObject(store)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
