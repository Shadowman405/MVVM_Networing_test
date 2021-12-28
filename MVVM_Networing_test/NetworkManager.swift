//
//  NetworkManager.swift
//  MVVM_Networing_test
//
//  Created by Maxim Mitin on 28.12.21.
//

import Foundation

class NetworkManager: NSObject {
    
    func fetchMovies(completion: ([String]) -> ()){
        completion(["Alien", "The Thing", "1408"])
    }
}
