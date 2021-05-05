//
//  deeplink_swiftui_tutorialApp.swift
//  deeplink_swiftui_tutorial
//
//  Created by mac on 2021/05/01.
//
import Foundation
import SwiftUI

@main
struct deeplink_swiftui_tutorialApp: App {
    
    @State var selectedTab = TabIdentifider.todos
    var body: some Scene {
        WindowGroup {
            TabView(selection: $selectedTab,
                    content:  {
                        TodosView().tabItem {
                            VStack{
                                Image(systemName: "list.bullet")
                                Text("할일목록")
                            }
                        }.tag(TabIdentifider.todos)
                        ProfileView().tabItem {
                            VStack{
                                Image(systemName: "person.circle.fill")
                                Text("프로필")
                            } }.tag(TabIdentifider.profile)
                    }
            )
            .onOpenURL(perform: { url in
                // 열려야 하는 url 처리
                guard let tagId = url.tabIdentifier else { return }
                selectedTab = tagId
            })
        }
    }
}

struct deeplink_swiftui_tutorialApp_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}

// 어떤 탭이 선택되었는지
enum TabIdentifider : Hashable{
    case todos
    case profile
}

// 어떤 페이지를 보여줘야 하는지
enum PageIdentifier: Hashable {
    case todoItem(id: UUID)
}

extension URL {
    
    // info 에서 추가한 딥링크가 들어왔는지 여부
    var isDeepLink: Bool{
        return scheme == "deeplink-swiftui"
    }
    
    // 들어온 url 로 어느 탭으로 이동해야 하는지
    var tabIdentifier: TabIdentifider? {
        guard isDeepLink else {
            return nil
        }
        
        // deeplink-swiftui://hohoho/great
        switch host {
        case "todos":
            return .todos
        case "profile":
            return .profile
        default:
            return nil
        }
    }
    
    // deeplink-swiftui://hohoho/great
    var detailPage: PageIdentifier?{
        // ["/", "id"]
        // ["/", "greate"]
        print("pathComponents: \(pathComponents[1])")
        
        let uuid2 = UUID(uuidString: pathComponents[1])
        print("uuid : \(uuid2)")

        guard
            let tabId = tabIdentifier,
              pathComponents.count > 1,
              let uuid = UUID(uuidString: pathComponents[1])
              else { return nil }
        
//        let tabId = tabIdentifier
//        let uuid = UUID()
        
        
        print("1 \(uuid)")
        
        switch tabId {
        case .todos:
            return .todoItem(id: uuid)
        default:
            return nil
        }
    }
}
