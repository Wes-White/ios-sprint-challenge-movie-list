//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Wesley Ryan on 3/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol NewMovieDelegate {
    func movieWasCreated(movie: Movie)
}

class AddMovieViewController: UIViewController {

    @IBOutlet weak var addMovieTextField: UITextField!
    
    var delegate: NewMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func AddMovieSave(_ sender: Any) {
        guard let newMovieTitle = addMovieTextField.text else { return }
        
        let newMovie = Movie(name: newMovieTitle, seen: false)
        delegate?.movieWasCreated(movie: newMovie)
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
