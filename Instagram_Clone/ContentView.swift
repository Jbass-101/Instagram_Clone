//
//  ContentView.swift
//  Instagram_Clone
//
//  Created by Paulette Stevena on 2023/11/03.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var vm = ContentViewModel()
    @StateObject var registrationVmEnvironment = RegistrationVM()
    
    var body: some View {
        Group{
            if vm.userSession == nil {
                LoginView()
                    .environmentObject(registrationVmEnvironment)
                
            } else {
                MainTabView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
