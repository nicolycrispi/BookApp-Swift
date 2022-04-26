//
//  Network.swift
//  ssbook
//
//  Created by Nicoly Crispi on 19/04/22.
//

import Foundation
import Apollo

class Network {
    static let shared = Network()
    
    let url = "https://us-central1-ss-devops.cloudfunctions.net/GraphQL"
    
    private(set) lazy var apollo = ApolloClient(url: URL(string: url)!)
}
