//
//  TableViewController.swift
//  MVVM_Networing_test
//
//  Created by Maxim Mitin on 28.12.21.
//

import UIKit

class TableViewController: UITableViewController {
    
    @IBOutlet var viewModel: ViewModel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.fetchMovies { [weak self] in
            DispatchQueue.main.async {
                self?.tableView.reloadData()
            }
        }
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection()
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = viewModel.titleForCell(atIndexPath: indexPath)
        return cell
    }
    
}
