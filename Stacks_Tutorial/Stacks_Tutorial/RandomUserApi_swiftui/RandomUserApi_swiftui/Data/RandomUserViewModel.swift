//
//  RandomUserViewModel.swift
//  RandomUserApi_swiftui
//
//  Created by mac on 2021/05/07.
//

import Foundation
import Combine
import Alamofire

class RandomUserViewModel: ObservableObject{
    
    // MARK : properties
    var subscription = Set<AnyCancellable>()
    
    @Published var randomUsers = [RandomUser]()
    
    var refreshActionSubject = PassthroughSubject<(), Never>()

    var baseUrl = "https://randomuser.me/api/?results=100"
    
    init(){
        print(#fileID, #function, #line, "")
        fetchRandomUsers()
        
        refreshActionSubject.sink(receiveValue: { [weak self] _ in
            guard let self = self else { return }
            
            print("RandomUserViewModel - init - refreshActionSubject")
            self.fetchRandomUsers()
        })
        .store(in: &subscription)
    }
    
    fileprivate func fetchRandomUsers(){
        print(#fileID, #function, #line, "")
        AF.request(RandomUserRouter.getUsers())
            .publishDecodable(type: RandomUserResponse.self)
            .compactMap{ $0.value }
            .map{ $0.results }
            .sink(receiveCompletion: { completion in
                print("데이터 스트림 완료")
            }, receiveValue: { receivedValue in
                print("받은 값 \(receivedValue.count)")
                self.randomUsers = receivedValue
            })
            .store(in: &subscription)
        
    }
}
