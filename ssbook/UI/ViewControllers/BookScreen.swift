//
//  BookScreen.swift
//  ssbook
//
//  Created by Nicoly Crispi on 14/04/22.
//

import SwiftUI

struct BookScreen: View {
    
    var title: String = "O duque e eu (Os Bridgertons Livro 1)"
    var author: String = "Julia Quinn"
    var text: String = "Simon Basset, o irresistível duque de Hastings, acaba de retornar a Londres depois de seis anos viajando pelo mundo. Rico, bonito e solteiro, ele é um prato cheio para as mães da alta sociedade, que só pensam em arrumar um bom partido para suas filhas. Simon, porém, tem o firme propósito de nunca se casar. Assim, para se livrar das garras dessas mulheres, precisa de um plano infalível. É quando entra em cena Daphne Bridgerton, a irmã mais nova de seu melhor amigo. Apesar de espirituosa e dona de uma personalidade marcante, todos os homens que se interessam por ela são velhos demais, pouco inteligentes ou destituídos de qualquer tipo de charme. E os que têm potencial para ser bons maridos só a veem como uma boa amiga. A ideia de Simon é fingir que a corteja. Dessa forma, de uma tacada só, ele conseguirá afastar as jovens obcecadas por um marido e atrairá vários pretendentes para Daphne. Afinal, se um duque está interessado nela, a jovem deve ter mais atrativos do que aparenta."
    
    var body: some View {
        ScrollView {
            VStack {
                Image("bridgertons_book_screen")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .edgesIgnoringSafeArea(.all)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                    .offset(y: -50)
                VStack {
                    ZStack {
                        HStack (alignment: .top) {
                            VStack (alignment: .leading) {
                                Text(title)
                                    .font(.system(size: 20, weight: .bold, design: .default))
                                    .multilineTextAlignment(.leading)
                                    .frame(alignment: .leading)
                                    .lineLimit(3)
                                    .foregroundColor(Color("five_gray"))
                                Text(author)
                                    .multilineTextAlignment(.leading)
                                    .font(.system(size: 14, design: .default))
                                    .foregroundColor(.gray)
                                    .lineLimit(2)
                            }
                            Spacer()
                            Image(systemName: "heart")
                                .font(.system(size: 20, weight: .bold, design: .default))
                                .multilineTextAlignment(.leading)
                                .frame(alignment: .leading)
                                .lineLimit(3)
                                .foregroundColor(Color("five_gray"))
                                .padding(.top, 0)
                        }
                        .padding()
                    }
                    Text(text)
                        .padding(.leading)
                        .padding(.trailing)
                        .padding(.bottom)
                        .background(
                            RoundedRectangle(cornerRadius: 32)
                                .stroke(Color.white)
                                .background(Color.white)
                        )
            } .offset(y: -50)
        }
            .padding(.top, 0)
    }
}

struct BookScreen_Previews: PreviewProvider {
    static var previews: some View {
        BookScreen()
    }
}
}
