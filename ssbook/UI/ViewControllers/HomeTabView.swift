//
//  HomeView.swift
//  ssbook
//
//  Created by Nicoly Crispi on 13/04/22.
//

import SwiftUI

struct HomeTabView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("main_background_grey")
                VStack {
                    HeaderView()
                    ScrollView {
                        VStack {
                            homeSectionTitle(titulo: "Livros favoritos")
                            FavoriteBooksHomeView()
                            homeSectionTitle(titulo: "Autores favoritos")
                            FavoriteAuthorsHomeView()
                            libraryTitle
                            GenresHomeView()
                            LibraryHomeView()
                        }
                    }
                }
            }
            .navigationBarHidden(true)
        }
    }
}

func homeSectionTitle(titulo: String) -> some View {
    HStack {
        Text(titulo)
            .font(.system(size: 20, weight: .bold, design: .default))
            .bold()
            .foregroundColor(Color("five_gray"))
        Spacer()
        Text("ver todos")
            .font(.system(size: 14, weight: .bold, design: .default))
            .foregroundColor(Color("ssbook_purple"))
    }
    .padding(.top)
    .padding(.leading)
    .padding(.trailing)
    .padding(.bottom, 0)
}

var libraryTitle: some View {
    HStack {
        Text("Biblioteca")
            .font(.system(size: 20, weight: .bold, design: .default))
            .bold()
            .foregroundColor(Color("five_gray"))
        Spacer()
    }
    .padding(.top)
    .padding(.leading)
    .padding(.trailing)
    .padding(.bottom, 0)
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabView()
    }
}
