//
//  NavigationView.swift
//  ssbook
//
//  Created by Nicoly Crispi on 14/04/22.
//

import SwiftUI

struct MainNavigationView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                // imagem livro
                // descriçao livro
                
                NavigationLink("Ölá!", destination: AddView())
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .navigationBarHidden(true)
        }
    }
}

struct MainNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        MainNavigationView()
    }
}
