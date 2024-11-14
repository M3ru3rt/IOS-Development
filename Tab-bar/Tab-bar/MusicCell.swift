//
//  MusicCell.swift
//  Tab-bar
//
//  Created by Balgabek Zhaksylyk on 13.11.2024.
//

import UIKit

class MusicCell: UITableViewCell {

    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var coverArtView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func configure(with music: Music){
        coverArtView.image = music.coverArt
        titleLabel.text = music.title
        infoLabel.text = "\(music.artist) | \(music.album)"
        
        coverArtView.layer.cornerRadius = 8
        coverArtView.clipsToBounds = true
        coverArtView.contentMode = .scaleAspectFill
    }
}
