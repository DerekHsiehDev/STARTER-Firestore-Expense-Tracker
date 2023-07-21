//
//  SettingsView.swift
//  ExpenseTrackerFirestore
//
//  Created by Derek Hsieh on 7/20/23.
//

import SwiftUI

struct SettingsView: View {
    
    @AppStorage("uid") var userID: String = ""
    @AppStorage("email") var email: String = ""
    @AppStorage("name") var name: String = ""
    
    
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("User Info")) {
                    Text("Name: \(name)")
                    Text("Email: \(email)")
                    // Add more settings options here
                }
                Section(header: Text("Danger")) {
                
                    Button(action: {
                        // Handle logout action
                    }) {
                        Text("Logout")
                            
                    }
                    
                    Button(action: {
                        // Handle delete account action
                    }) {
                        Text("Delete Account")
                .foregroundColor(.red)
                    }
                }

            }
            .navigationTitle("Settings")
        }
    }
}


struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}


struct LogoutButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

struct DeleteButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}
