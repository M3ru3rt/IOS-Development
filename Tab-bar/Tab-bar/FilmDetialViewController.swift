//
//  FilmDetialViewController.swift
//  Tab-bar
//
//  Created by Balgabek Zhaksylyk on 15.11.2024.
//

import UIKit

class FilmDetialViewController: UIViewController {

    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var inputModel: Film?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let film = inputModel{
            imageView.image = film.poster
            titleLabel.text = film.title
            genreLabel.text = film.genre
            yearLabel.text = film.year
        }
    }
    
    func configureView(with film: Film) {
        self.inputModel = film
        
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
