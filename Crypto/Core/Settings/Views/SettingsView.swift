//
//  SettingsView.swift
//  Crypto
//
//  Created by Volkan Celik on 02/06/2023.
//

import SwiftUI

struct SettingsView: View {
    
    let defaultURL=URL(string: "https://www.google.com")!
    let youtubeURL=URL(string: "https://www.swift.org/documentation/")!
    let appleURL=URL(string:"https://developer.apple.com/documentation/swift")!
    let coingeckoURL=URL(string: "https://www.coingecko.com/")!
    let githubURL=URL(string: "https://github.com/twostraws")!
    
    var body: some View {
        NavigationView{
            List{
                Text("Hi")
                Section(header: Text("header")) {
                    Text("Hi")
                    Text("Hi")
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Settings")
            .toolbar{
                ToolbarItem(placement:.navigationBarLeading) {
                    XMarkButton()
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
