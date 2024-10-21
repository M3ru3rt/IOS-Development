//
//  MovieCell.swift
//  MyFavoritesCollection
//
//  Created by Balgabek Zhaksylyk on 22.10.2024.
//

import UIKit

class MovieCell: UICollectionViewCell {
    @IBOutlet private weak var posterImageView: UIImageView!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var genreLabel: UILabel!

    func configure(with movie: Movie) {
        posterImageView.image = movie.poster
        titleLabel.text = movie.title
        genreLabel.text = "\(movie.year) | \(movie.genre)"
            
        // Style the image view
        posterImageView.layer.cornerRadius = 8
        posterImageView.clipsToBounds = true
        posterImageView.contentMode = .scaleAspectFill
    }
}
