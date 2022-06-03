//
//  ContentView.swift
//  iChat_Habita
//
//  Created by Danielly Santos Lopes da Silva on 03/06/22.
//

import SwiftUI

struct SingnInView: View {
    
    @State private var email = ""
    @State private var password = ""

    
    
    
    var body: some View {
        VStack{
            Image("logo-chat")
                .resizable()
                .scaledToFit()
                .padding()
            
            
                
            TextField("Entre com seu email", text: $email)
                .padding()
                .border(Color(UIColor.separator))
                
            SecureField("Entre com sua Senha", text: $password)
                .padding()
                .border(Color(UIColor.separator))
    }
}

struct SingnInView_Previews: PreviewProvider {
    static var previews: some View {
        SingnInView()
    }
}
}
