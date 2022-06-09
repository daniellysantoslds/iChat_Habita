//
//  SingUpView.swift
//  iChat_Habita
//
//  Created by Danielly Santos Lopes da Silva on 07/06/22.
//

import SwiftUI


struct SingUpView: View {
    
    @StateObject var viewModel =  SingUpViewModel() 
    

    var body: some View {
        VStack{
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 230)
                .padding()
            
                

            
            Text("Nome").frame(maxWidth: .infinity, alignment: .leading)
                .font(.system(size: 18))
            
                .padding(.bottom, 5)
            
            TextField("digite seu nome", text: $viewModel.name)
                .padding()
                .border(Color("Black -1"))
                .background(.white)
                .cornerRadius(4)
                .overlay(
                    RoundedRectangle(cornerRadius: 4).strokeBorder(Color("Black -1"), style: StrokeStyle(lineWidth: 1.0))
                                            
                ) .padding(.bottom, 24)
            
            
            
            
            Text("E-mail").frame(maxWidth: .infinity, alignment: .leading)
                .font(.system(size: 18))
            
                .padding(.bottom, 5)
            
            TextField("email@hotma", text: $viewModel.email)
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
                                            
                )  .padding(.bottom, 32)
            
            if viewModel.isLoading{
                ProgressView()
                    .padding()
            }
            
            
            Button{
                viewModel.singUp()
            } label: {
                Text("Entrar")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color("Blue 0"))
                    .foregroundColor(Color("White 0"))
                    .cornerRadius(4)
                
            }
            .alert(isPresented: $viewModel.formInvalid) {
                Alert(title: Text(viewModel.alertText))
            }
            
         
          
                           
                            
                        
            
            
            
            
            
        } .frame(maxWidth: .infinity,maxHeight: .infinity)
            .padding(.horizontal, 8)
            .navigationBarTitleDisplayMode(.inline)
    }
    
    
    

struct SingUpView_Previews: PreviewProvider {
    static var previews: some View {
        SingUpView()
    }
}
}

    
