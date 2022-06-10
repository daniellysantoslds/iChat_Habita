//
//  ContentView.swift
//  iChat_Habita
//
//  Created by Danielly Santos Lopes da Silva on 10/06/22.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel =  ContentViewModel()



    var body: some View {
        if viewModel.isLogged {
              MessagesView()
                
            } else {
                SingnInView()
                //exibir tela de login
            }
            
            
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
