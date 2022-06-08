//
//  SingnInViewModel.swift
//  iChat_Habita
//
//  Created by Danielly Santos Lopes da Silva on 03/06/22.
//

import SwiftUI

class SingInViewModel: ObservableObject {
    
    var email = ""
    var password = ""
    
    func singIn(){
        print("email: \(email), senha: \(password)")
    }
    
}
