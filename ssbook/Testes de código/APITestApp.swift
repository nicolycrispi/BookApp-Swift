//
//  APITestApp.swift
//  ssbook
//
//  Created by Nicoly Crispi on 19/04/22.
//

//import SwiftUI
//
//struct APITestApp: View {
//    
//    @State var bookAuthor = ""
//    
//    var body: some View {
//        Text(bookAuthor).onAppear(perform: {
//            Network.shared.apollo.fetch(query: MyQueryQuery()) {result in
//                switch result {
//                    case .success(let graphlQLResult):
//                        DispatchQueue.main.async {
//                            if let bookAuth = graphlQLResult.data?.book.author.name {
//                                self.bookAuthor = bookAuth
//                            }
//                        }
//                    case . failure(let error):
//                        print ("Error: \(error)")
//                }
//            }
//        }
//        )
//    }
//}
//
//struct APITestApp_Previews: PreviewProvider {
//    static var previews: some View {
//        APITestApp()
//    }
//}
