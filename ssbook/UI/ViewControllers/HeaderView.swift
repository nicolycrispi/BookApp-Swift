//
//  HeaderView.swift
//  ssbook
//
//  Created by Nicoly Crispi on 14/04/22.
//

import SwiftUI

struct HeaderView: View {
    
    var body: some View {
            ZStack {
                Rectangle()
                    .fill(Color.white)
                    .frame(width: 360, height: 128)
                    .cornerRadius(32)
                VStack {
                    HStack {
                        Text("SS")
                            .foregroundColor(.black)
                            .font(.custom("BebasNeue-Regular", size: 33))
                            .bold()
                            .tracking(-2)
                        + Text ("BOOK")
                            .foregroundColor(Color("ssbook_purple"))
                            .font(.custom("BebasNeue-Regular", size: 33))
                            .bold()
                            .tracking(-2)
                        Spacer()
                        Image("ju")
                    }
                    .padding(.bottom, 10)
                    .padding(.leading)
                    .padding(.trailing)
                    
                    HStack {
                        VStack (alignment: .center) {
                            Text("Meus livros")
                                .font(.custom("BebasNeue-Regular", size: 14))
                                .bold()
                                .multilineTextAlignment(.center)
                            RoundedRectangle(cornerRadius: 2.0)
                                .fill(Color("ssbook_purple"))
                                .frame(width: 94, height: 4)
                                .padding(.bottom, 0)
                        }
                        .padding(.bottom, -40)
                        .padding(.top, 0)
                        
                        Spacer()
                        
                        VStack {
                            Text("Emprestados")
                                .font(.custom("BebasNeue-Regular", size: 14))
                                .bold()
                                .frame(alignment: .leading)
                            RoundedRectangle(cornerRadius: 2.0)
                                .fill(Color(.white))
                                .frame(width: 94, height: 4)
                        }
                        .padding(.bottom, -25)
                        .padding(.top, 0)
                        .padding(.trailing, 40)
                        
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                    }
                    .padding(.leading)
                    .padding(.bottom, 0)
                    .padding(.top, 0)
                }
                .padding(.bottom, 0)
                .padding(.top, 0)
            }
            .background(Color.white)
        }
    }

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
