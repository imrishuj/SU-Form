//
//  ContentView.swift
//  DemoForum
//
//  Created by Rishabh on 27/05/20.
//  Copyright © 2020 Rishabh. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var username: String = ""
    @State private var isPrivateAccount: Bool = true
    @State private var pickerIndex = 0
    @State private var pickerOptions = ["Always", "When Unlocked", "Never"]
    
    var body: some View {
        
        NavigationView {
                        
            Form {
                
                Section {

                    HStack {
                        Image("game")
                        .resizable()
                        .frame(width: 100, height: 100, alignment: .center)
                        .cornerRadius(50.0)
                        Text("username@usernamecom")
                    }
                }

                Section(header: Text("Profile")) {
                    
                    TextField("Username", text: $username)
                    Toggle(isOn: $isPrivateAccount) {
                        Text("Private Account")
                    }
                }
                
                Section(header: Text("Notifications")) {
                    
                    Picker(selection: $pickerIndex, label: Text("Show Previews")) {
                        ForEach(0 ..< pickerOptions.count) {
                            Text(self.pickerOptions[$0])
                        }
                    }
                }
                
                Section(header: Text("Others")) {
                    
                    VStack {
                        HStack {
                            Text("Version")
                            Spacer()
                            Text("1.0")
                        }
                    }
                }
            }
                
            .navigationBarTitle("Form in SwiftUI")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
