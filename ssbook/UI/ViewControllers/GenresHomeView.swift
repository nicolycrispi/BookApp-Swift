//
//  GenresHomeView.swift
//  ssbook
//
//  Created by Nicoly Crispi on 13/04/22.
//

import SwiftUI

struct GenresHomeView: View {
    
    @State private var didTap: Bool = false
    
    let bookGenres: [String] = ["Romance", "Aventura", "Comédia", "Policial"]
    
    @State var buttonColor: String = "white"
    @State var buttonTextColor: String = "five_gray"
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            HStack {
                Button(action: {
            }) {
                ZStack {
                    RoundedRectangle(cornerRadius: 16)
                        .fill(Color("ssbook_purple"))
                        .frame(width: 92, height:32)
                        .overlay {
                            Text("Todos" as String)
                                .fontWeight(.bold)
                                .font(.caption)
                                .foregroundColor(Color(.white))
                        }
                }
            }
            .frame(width: 92, height: 32, alignment: .center)
                ForEach(bookGenres.indices) { index in
                    Button(action: {
                }) {
                    Text("\(bookGenres[index])" as String)
                        .fontWeight(.bold)
                        .font(.caption)
                        .foregroundColor(Color(buttonTextColor))
                        .overlay(
                                    RoundedRectangle(cornerRadius: 16)
                                        .stroke(Color("ssbook_light_gray"), lineWidth: 1)
                                        .frame(width: 92, height:32)
                                )
                }
                .frame(width: 92, height: 32, alignment: .center)
                }
            }
            .padding(.leading)
            .padding(.trailing)
        })
    }
}


struct GenresHomeView_Previews: PreviewProvider {
    static var previews: some View {
        GenresHomeView()
    }
}
