//
//  AppStore.swift
//  SwiftUI_Redux
//
//  Created by mac on 2021/05/07.
//

import Foundation

typealias AppStore = Store<AppState, AppState>

final class Store<State, Action>: ObservableObject{
    // 외부에서 읽을수만 있도록 private(set)
    @Published private(set) var state: State
    
    private let reducer: Reducer<State, Action>
    
    init(state: State, reducer: @escaping Reducer<State, Action>) {
        self.state = state
        self.reducer = reducer
    }
    
    // 디스패치를 통해 액션을 동작
    func dispatch(action: Action){
        // inout 매개변수를 넣을때는 & 를 넣어줘야 한다.
        // 리듀서 클로저를 사용해 액션을 필터링한다.
        reducer(&self.state, action)
    }
}
