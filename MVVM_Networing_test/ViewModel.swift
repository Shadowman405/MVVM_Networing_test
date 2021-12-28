//
//  ViewModel.swift
//  MVVM_Networing_test
//
//  Created by Maxim Mitin on 28.12.21.
//

import Foundation

class ViewModel: NSObject {
    
    @IBOutlet weak var networkManager: NetworkManager!
    
    private var movies: [String]?
    
    func fetchMovies(completion: @escaping () -> ()) {
        networkManager.fetchMovies { [weak self] movies in
            self?.movies = movies
            completion()
        }
    }
    
    func numberOfRowsInSection() -> Int {
        return movies?.count ?? 0
    }
    
    func titleForCell(atIndexPath indexPath: IndexPath) -> String{
        guard let movies = movies else {return "1"}
        return movies[indexPath.row]
    }
    
}