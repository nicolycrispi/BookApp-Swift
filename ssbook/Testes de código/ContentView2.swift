////
////  ContentView2.swift
////  ssbook
////
////  Created by Nicoly Crispi on 20/04/22.
////
//
//import SwiftUI
//
//struct ContentView2: View {
//    @State var bookAuthor = ""
//    
//    var body: some View {
//
//            Text(bookAuthor).onAppear(perform: {
//                Network.shared.apollo.fetch(query: FavoriteAuthorsQuery()) {result in
//                    switch result {
//                        case .success(let graphlQLResult):
//                            DispatchQueue.main.async {
//                                if let bookAuth = graphlQLResult.data?.book.author.name {
//                                    self.bookAuthor = bookAuth
//                                }
//                            }
//                        case . failure(let error):
//                            print ("Error: \(error)")
//                    }
//                }
//            }
//            )
//        }
//        //TabBarView()
//    }
//
//struct ContentView2_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
//
