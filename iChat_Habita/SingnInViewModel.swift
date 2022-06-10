//
//  SingnInViewModel.swift
//  iChat_Habita
//
//  Created by Danielly Santos Lopes da Silva on 03/06/22.
//

import SwiftUI
import FirebaseAuth

class SingInViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    
    @Published var formInvalid = false
     var alertText = ""
     
     @Published var isLoading = false
    
    func singIn(){
        print("email: \(email), senha: \(password)")
        
        isLoading = true
   
        Auth.auth().signIn(withEmail: email, password: password) {
            result, err in
            guard let user = result?.user, err == nil else {
                self.formInvalid = true
                self.alertText = err!.localizedDescription
               //print(err)
                self.isLoading = false
                return
                
            }
            self.isLoading = false
            print("usuario logado \(user.uid)")
        }
    }
    
}
