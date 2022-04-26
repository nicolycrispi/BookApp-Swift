//
//  SSBookApp.swift
//  ssbook
//
//  Created by Nicoly Crispi on 25/04/22.
//

import Foundation
import SwiftUI

//@main
struct SSBookApp: App {
    @StateObject var favoriteAuthorsViewModel = FavoriteAuthorsViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(favoriteAuthorsViewModel)
        }
    }
}
