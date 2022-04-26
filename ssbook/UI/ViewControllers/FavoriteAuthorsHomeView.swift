//
//  FavoriteAuthorsHomeView.swift
//  ssbook
//
//  Created by Nicoly Crispi on 13/04/22.
//

import SwiftUI

let authorImages : [String] = ["connie", "homem"]
let authorNames: [String] = ["Connie Brockway", "John Doe"]
let numberOfAuthorBooks: [String] = ["6 livros", "0 livros"]

struct FavoriteAuthorsHomeView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            HStack {
                ForEach(authorNames.indices) { index in
                    ZStack {
                        RoundedRectangle(cornerRadius: 8.0)
                            .stroke(Color.gray)
                            .frame(width: 248, height: 69)
                        HStack{
                            Image("\(authorImages[index])")
                                .frame(width: 63, height: 67)
                                .scaledToFit()
                            VStack (alignment:.leading){
                                Text("\(authorNames[index])")
                                    .bold()
                                    .multilineTextAlignment(.leading)
                                Text("\(numberOfAuthorBooks[index])")
                                    .bold()
                                    .multilineTextAlignment(.leading)
                                    .font(.caption)
                                 .foregroundColor(Color("sevenFiveGray"))
                                //.multilineTextAlignment(.leading)
//                                    .frame(maxWidth: .infinity, alignment: .leading)
//
//                                    .padding(.leading)
                            }
                            
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                        .padding(.trailing)
                    }
                    //.padding(.trailing)
                    .padding(.leading)
                    .padding(.bottom)
                    .padding(.top, 0)
                }
            }
        })
    }
}

struct FavoriteAuthorsHomeView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteAuthorsHomeView()
    }
}
