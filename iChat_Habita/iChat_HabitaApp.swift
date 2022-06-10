//
//  iChat_HabitaApp.swift
//  iChat_Habita
//
//  Created by Danielly Santos Lopes da Silva on 03/06/22.
//

import SwiftUI
import Firebase
//import FirebaseAuth

@main
struct iChat_HabitaApp: App {
    
    
    init(){
        FirebaseApp.configure()
      // try! Auth.auth().signOut()
    }
    var body: some Scene {
        WindowGroup {
           ContentView()
        }
    }
}
