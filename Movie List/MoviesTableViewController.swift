//
//  MoviesTableViewController.swift
//  Movie List
//
//  Created by Wesley Ryan on 3/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MoviesTableViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var movies: [Movie] = [Movie(name: "The Empire Strikes Back", seen: true)]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
    }
    

   
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "AddMovieSegue" {
            guard  let newMovieVC = segue.destination as? AddMovieViewController else { return }
            
            newMovieVC.delegate = self
        }
    }


}

extension MoviesTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieTableCellTableViewCell
            
            else {
                fatalError("Cell is not a MovieTableCellTableViewCell oopsiessss")
        }
        let movie = movies[indexPath.row]
        
        
        cell.movieLabel.text = movie.name
        cell.hasSeenButton.setTitle("Unseen", for: .normal)
        
        //something with button 
        
       
        return cell
    }
    
     func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            movies.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            return
        }
    }
}

extension MoviesTableViewController: NewMovieDelegate {
    func movieWasCreated(movie: Movie) {
        movies.append(movie)
        tableView.reloadData()
    }
    
    
}






