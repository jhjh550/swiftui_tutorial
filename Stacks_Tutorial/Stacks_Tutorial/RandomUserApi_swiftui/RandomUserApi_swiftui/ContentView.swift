//
//  ContentView.swift
//  RandomUserApi_swiftui
//
//  Created by mac on 2021/05/07.
//

import SwiftUI
import Introspect
import UIKit

class RefreshControlHelper{
    var parentContentView: ContentView?
    var refreshControl: UIRefreshControl?
    
    @objc func didRefresh(){
        print(#fileID, #function, #line, "")
        guard let parentContentView = parentContentView,
                 let refreshControl = refreshControl else {
            print("parentContentView, refreshControl 이 nil 입니다.")
            return
        }
        DispatchQueue.main.asyncAfter(deadline: .now()+0.7, execute: {
            print("리프레시가 되었다.")
            // MARK : todo - api 다시 땡기기
            //parentContentView.randomUserViewModel.fetchRandomUsers()
            parentContentView.randomUserViewModel.refreshActionSubject.send()
            refreshControl.endRefreshing()
        })
    }
}

struct ContentView: View {
    
    @ObservedObject var randomUserViewModel = RandomUserViewModel()
    
    let refreshControlViewHelper = RefreshControlHelper()
    var body: some View {
        List(randomUserViewModel.randomUsers){ aRandomUser in
            RandomUserRomView(aRandomUser)
        }
        .introspectTableView{ self.configureRefreshControl($0) }
//        .introspectTableView(customize: { tableView in
//            self.configureRefreshControl(tableView)
//        })
    }
}

// MARK : Helper Methods ...
extension ContentView{
    fileprivate func configureRefreshControl(_ tableView: UITableView){
        print(#fileID, #function, #line, "")
        
        let myRefresh = UIRefreshControl()
        myRefresh.tintColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
        refreshControlViewHelper.refreshControl = myRefresh
        refreshControlViewHelper.parentContentView = self
        myRefresh.addTarget(refreshControlViewHelper, action: #selector(refreshControlViewHelper.didRefresh), for: .valueChanged)
        
        tableView.refreshControl = myRefresh
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
