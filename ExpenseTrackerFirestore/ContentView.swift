//
//  ContentView.swift
//  ExpenseTrackerFirestore
//
//  Created by Derek Hsieh on 7/20/23.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("uid") var userID: String = ""
    
    var body: some View {
        
        if userID != "" {
            
            TabView {
                ExpensesView()
                    .tabItem {
                        Image(systemName: "list.bullet")
                        Text("Expenses")
                    }
                
                
                SettingsView()
                    .tabItem {
                        Image(systemName: "gearshape")
                        Text("Settings")
                    }
            }
        } else {
            AuthView()
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
