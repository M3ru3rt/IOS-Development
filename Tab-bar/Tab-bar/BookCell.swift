//
//  BookCell.swift
//  Tab-bar
//
//  Created by Balgabek Zhaksylyk on 13.11.2024.
//

import UIKit

class BookCell: UITableViewCell {

    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var coverImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(with book: Book){
        coverImageView.image = book.coverImage
        titleLabel.text = book.title
        infoLabel.text = "\(book.author) | \(book.year)"
        
        coverImageView.layer.cornerRadius = 8
        coverImageView.clipsToBounds = true
        coverImageView.contentMode = .scaleAspectFill
    }

}
