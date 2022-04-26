//
//  FavoriteBooksHomeView.swift
//  ssbook
//
//  Created by Nicoly Crispi on 13/04/22.
//

import SwiftUI

struct FavoriteBooksHomeView: View {
    
    let bookTitles: [String] = ["O duque e eu (Os Bridgertons...", "Sprint. O Método Usado no Google Para Testar", "Design Is Storytelling", ]
    let bookCovers: [String] = ["bridgerton_fav_cover", "sprint_fav_cover", "design_fav_cover"]
    let bookAuthors: [String] = ["Julia Quinn", "John Zeratsky", "Ellen Lupton"]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            HStack {
                ForEach(bookTitles.indices) { index in
                    NavigationLink(destination: BookScreen()) {
                        VStack {
                            Image("\(bookCovers[index])")
                                .frame(width: 136, height: 198)
                        Text("\(bookTitles[index])" as String)
                            .font(.system(size: 16, weight: .bold, design: .default))
                            .multilineTextAlignment(.leading)
                            .frame(width: 136, alignment: .leading)
                            .lineLimit(3)
                            .foregroundColor(Color("five_gray"))
                        Text("\(bookAuthors[index])" as String)
                            .font(.system(size: 14, weight: .bold, design: .default))
                            .foregroundColor(.gray)
                            .frame(width: 136, alignment: .leading)
                            .lineLimit(2)
                        }
                    }
                    .padding(.leading)
                    .padding(.trailing)
                    .padding(.top, 0)
                    .padding(.bottom, 0)
                    .fixedSize(horizontal: true, vertical: false)
                }
                
            }
            .padding(.bottom, 0)
        })
    }
}

struct FavoriteBooksHomeView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteBooksHomeView()
    }
}
