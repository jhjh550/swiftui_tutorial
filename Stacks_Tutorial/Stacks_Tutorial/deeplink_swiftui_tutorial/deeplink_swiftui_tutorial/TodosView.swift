//
//  TodosView.swift
//  deeplink_swiftui_tutorial
//
//  Created by mac on 2021/05/01.
//

import SwiftUI

struct TodoItem: Identifiable, Hashable {
    var id: UUID
    var title: String
}

func prepareData()->[TodoItem]{
    print("prepareData() called")
    
    var newList = [TodoItem]()
    for i in 0...20 {
        newList.append(TodoItem(id: UUID(), title: "내 할일 \(i)"))
    }
    return newList
}

struct TodosView: View {
    
    @State var todoItems = [TodoItem]()
    
    @State var activeUUID: UUID?
    
    init(){
        _todoItems = State(initialValue: prepareData())
    }
    var body: some View{
        NavigationView{
            List(todoItems){ todoItem in
                
                NavigationLink(
                    destination: Text("\(todoItem.title)"),
                    tag: todoItem.id,
                    // activeUUID 값이 변경되면 해당하는 링크 destination으로 이동
                    selection: $activeUUID,
                    label: {
                        Text("\(todoItem.title)")
                    }
                )
            }
            .navigationTitle("할일 목록")
            .onOpenURL(perform: { url in
                if case .todoItem(let id) = url.detailPage {
                    print("넘어온 id \(id)")
                }
            })
        }
    }
}

struct TodosView_Previews: PreviewProvider {
    static var previews: some View {
        TodosView()
    }
}
