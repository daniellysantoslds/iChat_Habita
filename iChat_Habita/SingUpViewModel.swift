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
    
    @Published var isLoading = false
    
    
    func singUp(){
        isLoading = true
        print("nome: \(name), email: \(email), senha: \(password)")
        
        Auth.auth().createUser(withEmail: email, password: password) {
            result, err in
            guard let user = result?.user, err == nil else {
                self.formInvalid = true
                self.alertText = err!.localizedDescription
               // print(err)
                self.isLoading = false
                return
                
            }
            self.isLoading = false
            print("usuario criado \(user.uid)")
        }
        
        
        
    }
    
}
