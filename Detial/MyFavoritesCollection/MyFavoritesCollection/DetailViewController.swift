//
//  DetailViewController.swift
//  MyFavoritesCollection
//
//  Created by Balgabek Zhaksylyk on 03.11.2024.
//

import UIKit

class DetailViewController: UIViewController {
    

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var posterImageView: UIImageView!
    
    var inputModel: Movie?
    
    override func viewDidLoad() {
           super.viewDidLoad()
        titleLabel.text = inputModel?.title
        genreLabel.text = inputModel?.genre
        posterImageView.image = inputModel?.poster
       }
    
    func configureView(with model: Movie){
        self.inputModel = model
    }

}
