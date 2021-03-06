//
//  SingUpViewModel.swift
//  iChat_Habita
//
//  Created by Danielly Santos Lopes da Silva on 07/06/22.
//

import SwiftUI
import FirebaseAuth
import FirebaseStorage
import FirebaseFirestore

class SingUpViewModel: ObservableObject {
    
    @Published var name = ""
    @Published var email = ""
    @Published var password = ""
    
    @Published var image = UIImage()
    
   @Published var formInvalid = false
    var alertText = ""
    
    @Published var isLoading = false
    
    
    func singUp(){
        //isLoading = true
        print("nome: \(name), email: \(email), senha: \(password)")
        
        if (image.size.width <= 0){
            formInvalid = true
            alertText = "Selecione uma foto"
            return
        }
        
        
        
        
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
            
            self.uploadPhoto()

            
        }
    }
     
    private func uploadPhoto() {
        let filename = UUID().uuidString

        
        guard let data = image.jpegData(compressionQuality: 0.2) else { return }
        
        let newMetadata = StorageMetadata()
        newMetadata.contentType = "image/jpeg"
        
        let ref = Storage.storage().reference(withPath: "/images/\(filename).jpg")
        
        

        
        

       ref.putData(data, metadata: newMetadata) { metadata, err in
        ref.downloadURL { url, error in
        self.isLoading = false
        guard let url = url else { return }
        print("Foto criada \(url)")
            self.createUser(photoUrl: url)
    }
   }
  }
    
    private func createUser(photoUrl: URL) {
        Firestore.firestore().collection("users")
            .document()
            .setData([
                "name": name,
                "uuid": Auth.auth().currentUser!.uid,
                "profileUrl": photoUrl.absoluteString
            ])  { err in
        self.isLoading = false
        if err != nil {
            print(err!.localizedDescription)
            return
        }
        }
    }
    
    
}

