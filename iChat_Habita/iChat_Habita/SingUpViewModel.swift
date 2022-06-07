//
//  SingUpViewModel.swift
//  iChat_Habita
//
//  Created by Danielly Santos Lopes da Silva on 07/06/22.
//

import SwiftUI

class SingUpViewModel: ObservableObject {
    
    var name = ""
    var email = ""
    var password = ""
    
    
    func singUp(){
        print("nome: \(name), email: \(email), senha: \(password)")
    }
    
}
