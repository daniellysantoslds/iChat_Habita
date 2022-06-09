//
//  SingUpView.swift
//  iChat_Habita
//
//  Created by Danielly Santos Lopes da Silva on 07/06/22.
//

import SwiftUI


struct SingUpView: View {
    
    @StateObject var viewModel =  SingUpViewModel()
    @State var IsShowPhotoLibrary = false
    

    var body: some View {
        VStack{
            
            Button {
                IsShowPhotoLibrary = true
            } label: {
                
                if  viewModel.image.size.width > 0 {
                    Image(uiImage: viewModel.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 130, height: 130)
                        .clipShape(Circle())

                } else {
                        Text("foto")
                            .frame(width: 130, height: 130)
                            .padding()
                            .background(Color("White -1"))
                            .foregroundColor(Color("Black -1"))
                            .cornerRadius(100.0)
                    }
                }
                
                
                
            
             .padding(.bottom, 32)
                .sheet(isPresented: $IsShowPhotoLibrary) {
                    ImagePicker(selectedImage: $viewModel.image)
                    
                }

                
            
                

            
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
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(.horizontal, 8)
        .navigationBarTitleDisplayMode(.inline)
            
        }

           
    }
    
    
    

struct SingUpView_Previews: PreviewProvider {
    static var previews: some View {
        SingUpView()
    }
}


    
