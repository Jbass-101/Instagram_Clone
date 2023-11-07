//
//  SearchVM.swift
//  Instagram_Clone
//
//  Created by Paulette Stevena on 2023/11/07.
//

import Foundation

class SearchVM: ObservableObject {
    @Published var users = [User]()
    
    init(){
        Task {
            try await fetchAllUsers()
        }
    }
    
    func fetchAllUsers() async throws {
        self.users = try await UserService.fetchAllUsers()
    }
}
