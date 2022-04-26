//
//  LibraryHomeView.swift
//  ssbook
//
//  Created by Nicoly Crispi on 13/04/22.
//

import SwiftUI

struct LibraryHomeView: View {
    
    let bookTitles: [String] = ["O duque e eu (Os Bridgertons Livro Novo 1)", "O visconde que me amava (Os Bridgertons Livro 2)", "A garota do lago", "Como fazer amigos e influenciar pessoas ", "Design Thinking: Uma Metodologia Poderosa Para Decretar o Fim Das Velhas Ideias", "A psicologia das cores: Como as cores afetam a emoção…"]
    let bookCovers: [String] = ["bridgerton_library_cover", "visconde_library_cover", "garota_library_cover", "amigos_library_cover", "design_library_cover", "psicologia_library_cover"]
    let bookAuthors: [String] = ["Julia Quinn", "Julia Quinn", "Charlie Donlea", "Dale Carnegie", "Tim Brown", "Eva Heller"]
        
    var body: some View {
        VStack {
            ForEach(bookTitles.indices) { index in
                NavigationLink(destination: BookScreen()) {
                    HStack {
                        Image("\(bookCovers[index])")
                            .frame(width: 48, height: 70)
                        VStack {
                            HStack {
                                Text("\(bookTitles[index])")
                                    .font(.system(size: 16, weight: .bold, design: .default))
                                    .foregroundColor(Color("five_gray"))
                                    .lineLimit(2)
                                    .multilineTextAlignment(.leading)
                                Spacer()
                            }
                            HStack {
                                Text("\(bookAuthors[index])")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                                Spacer()
                                
                            }
                        }
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.leading)
                    .padding(.trailing)
                .padding(.top)
                } .navigationBarHidden(true)
            }
        }    }
}

struct LibraryHomeView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryHomeView()
    }
}
