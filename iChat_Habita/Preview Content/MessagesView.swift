//
//  MessagesView.swift
//  iChat_Habita
//
//  Created by Danielly Santos Lopes da Silva on 10/06/22.
//

import SwiftUI

struct MessagesView: View {
    @StateObject var viewModel = MessagesViewModel()
    
    var body: some View {
        Button {
            viewModel.logout()
        } label: {
            Text("Logout")
        }

        
        
    }
}

struct MessagesView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesView()
    }
}
