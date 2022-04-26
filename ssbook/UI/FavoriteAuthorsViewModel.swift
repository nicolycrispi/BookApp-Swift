//
//  FavoriteAuthorsViewModel.swift
//  ssbook
//
//  Created by Nicoly Crispi on 20/04/22.
//

import Foundation

class FavoriteAuthorsViewModel: ObservableObject {
    
    @Published var id: String? = ""
    @Published var name: String? = ""
    @Published var picture: String? = ""
    @Published var booksCount: Int?
    
    init() {
        fetch()
    }
    
    func fetch() {
        Network.shared.apollo.fetch(query: FavoriteAuthorsQuery()) { result in
            switch result {
                case .success(let graphQLResult):
                    if let favoriteAuthors = graphQLResult.data?.favoriteAuthors {
                        print("Success! Result: \(graphQLResult)")
                        //self.favoriteAuthors = self.process(data: favoriteAuthors)
                    } else if let errors = graphQLResult.errors{
                        print("GraphQL errors \(errors)")
                    }
                case .failure(let error):
                    print("Failure! Error: \(error)")
            }
        }
    }
    
    func process(data: FavoriteAuthorsData) -> FavoriteAuthorsModel {
        return try! FavoriteAuthorsModel?.init(from: data as! Decoder)!
        //FavoriteAuthorsModel.FavoriteAuthors(from: data as! Decoder)
    }
}
