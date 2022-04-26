//
//  AppTestView.swift
//  ssbook
//
//  Created by Nicoly Crispi on 20/04/22.
//

import SwiftUI

struct AppTestView: View {
    var favoriteAuthors = FavoriteAuthorsQuery().self
    
    var body: some View {
        Text("hi")
        
    }
}

struct AppTestView_Previews: PreviewProvider {
    static var previews: some View {
        AppTestView()
    }
}
