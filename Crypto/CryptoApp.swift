//
//  CryptoApp.swift
//  Crypto
//
//  Created by volkancelik on 13.04.2023.
//

import SwiftUI

@main
struct CryptoApp: App {
    @StateObject private var vm=HomeViewModel()
    init(){
        UINavigationBar.appearance().largeTitleTextAttributes=[.foregroundColor:UIColor(Color.theme.accent)]
        UINavigationBar.appearance().titleTextAttributes=[.foregroundColor:UIColor(Color.theme.accent)]
    }
    var body: some Scene {
        WindowGroup {
            NavigationView{
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
