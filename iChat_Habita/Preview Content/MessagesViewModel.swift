//
//  MessageViweModel.swift
//  iChat_Habita
//
//  Created by Danielly Santos Lopes da Silva on 10/06/22.
//

import Foundation
import FirebaseAuth

class MessagesViewModel: ObservableObject {
    
    func logout (){
        try? Auth.auth().signOut()
    }
    
}

