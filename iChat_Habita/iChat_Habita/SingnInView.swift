//
//  ContentView.swift
//  iChat_Habita
//
//  Created by Danielly Santos Lopes da Silva on03/06/22.
//

import SwiftUI

struct SingnInView: View {
    
    
    @StateObject var viewModel =  SingInViewModel()
    

    var body: some View {
        VStack{
            Image("logo-chat")
                .resizable()
                .scaledToFit()
                .padding()
            
            
            
            Text("E-mail").frame(maxWidth: .infinity, alignment: .leading)
                .font(.system(size: 18))
            
                .padding(.bottom, 5)
            
            TextField("email@hotmail.com", text: $viewModel.email)
                .padding()
                .border(Color("Black -1"))
                .background(.white)
                .cornerRadius(4)
                .overlay(
                    RoundedRectangle(cornerRadius: 4).strokeBorder(Color("Black -1"), style: StrokeStyle(lineWidth: 1.0))
                                            
                ) .padding(.bottom, 24)
            
                
            Text("Senha").frame(maxWidth: .infinity, alignment: .leading)
                .font(.system(size: 18))
            
                .padding(.bottom, 5)
            
            SecureField("exemplosenha", text: $viewModel.password)
                .padding()
                .border(Color("Black -1"))
                .background(.white)
                .cornerRadius(4)
                .overlay(
                    RoundedRectangle(cornerRadius: 4).strokeBorder(Color("Black -1"), style: StrokeStyle(lineWidth: 1.0))
                                            
                )  .padding(.bottom, 16)
            
            
            Button{
                viewModel.singIn()
            } label: {
                Text("oii")
                
            }
            
            Divider()
            
            Button{
                print("Clicado 2")
            } label: {
                Text("Não tem uma conta? Faça cadastro")
                
            }
        } .padding(.horizontal, 8)
            
    }
}

struct SingnInView_Previews: PreviewProvider {
    static var previews: some View {
        SingnInView()
    }
}

