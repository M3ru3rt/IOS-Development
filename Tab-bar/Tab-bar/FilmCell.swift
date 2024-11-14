//
//  FilmCell.swift
//  Tab-bar
//
//  Created by Balgabek Zhaksylyk on 13.11.2024.
//

import UIKit

class FilmCell: UITableViewCell {
    
    
    @IBOutlet weak var posterIamge: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(with film: Film){
        posterIamge.image = film.poster
        titleLabel.text = film.title
        infoLabel.text = "\(film.year) | \(film.genre)"
        
        posterIamge.layer.cornerRadius = 8
        posterIamge.clipsToBounds = true
        posterIamge.contentMode = .scaleAspectFill
    }

}
