//
//  iChat_HabitaApp.swift
//  iChat_Habita
//
//  Created by Danielly Santos Lopes da Silva on 03/06/22.
//

import SwiftUI
import Firebase

@main
struct iChat_HabitaApp: App {
    
    
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            SingnInView()
        }
    }
}
