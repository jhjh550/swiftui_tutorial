//
//  DemoData.swift
//  ObservableTest
//
//  Created by mac on 2021/05/18.
//

import Foundation
import Combine

class DemoData: ObservableObject{
    @Published var userCount = 0
    @Published var currentUser = ""
    
    init() {
        updateData()
    }
    func updateData(){
        
    }
}
