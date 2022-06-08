//
//  SingUpViewModel.swift
//  iChat_Habita
//
//  Created by Danielly Santos Lopes da Silva on 07/06/22.
//

import SwiftUI
import FirebaseAuth

class SingUpViewModel: ObservableObject {
    
    var name = ""
    var email = ""
    var password = ""
    
   @Published var formInvalid = false
    var alertText = ""
    
    
    func singUp(){
        print("nome: \(name), email: \(email), senha: \(password)")
        
        Auth.auth().createUser(withEmail: email, password: password) {
            result, err in
            guard let user = result?.user, err == nil else {
                self.formInvalid = true
                self.alertText = err!.localizedDescription
                print(err)
                return
                
            }
            
            print("usuario criado \(user.uid)")
        }
        
        
        
    }
    
}
