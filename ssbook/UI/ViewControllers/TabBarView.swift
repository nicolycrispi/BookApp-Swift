//
//  TabBarView.swift
//  ssbook
//
//  Created by Nicoly Crispi on 13/04/22.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            HomeTabView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Início")
                }
            AddView()
                .tabItem {
                    Image(systemName: "plus.circle.fill")
                        Text("Adicionar")
                }
            SearchTabView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                        Text("Buscar")
                }
            FavoritesTabView()
                .tabItem {
                    Image(systemName: "heart.fill")
                        Text("Favoritos")
                }
        }
        .accentColor(Color.purple)
        .onAppear {
                    let appearance = UITabBarAppearance()
                    appearance.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterial)
                    appearance.backgroundColor = UIColor(Color.white)
                    // Use this appearance when scrolling behind the TabView:
                    UITabBar.appearance().standardAppearance = appearance
                    // Use this appearance when scrolled all the way up:
                    UITabBar.appearance().scrollEdgeAppearance = appearance
                }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
