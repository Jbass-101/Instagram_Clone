//
//  ContentViewViewModel.swift
//  Instagram_Clone
//
//  Created by Paulette Stevena on 2023/11/06.
//

import Foundation
import Firebase
import Combine


class ContentViewModel : ObservableObject {
    
    private let service = AuthService.shared
    private var cancellables = Set<AnyCancellable>()
    
    @Published var userSession: FirebaseAuth.User?
    @Published var currentUser: User?
    
    init(){
        setupSubscribers()
        
    }
    
    
    func setupSubscribers(){
        
        //Listen to changes of the user session by using combine
        service.$userSession.sink { [weak self] userSession in
            self?.userSession = userSession
        }
        .store(in: &cancellables)
        
        //Listen to changes of the current user
        service.$currentUser.sink { [weak self] currentUser in
            self?.currentUser = currentUser
        }
        .store(in: &cancellables)
    }
    
    
}
