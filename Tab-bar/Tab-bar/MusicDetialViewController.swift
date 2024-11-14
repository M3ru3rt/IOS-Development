//
//  MusicDetialViewController.swift
//  Tab-bar
//
//  Created by Balgabek Zhaksylyk on 15.11.2024.
//

import UIKit

class MusicDetialViewController: UIViewController {

    @IBOutlet weak var albumLabel: UILabel!
    @IBOutlet weak var artistLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var inputModel: Music?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let music = inputModel{
            imageView.image = music.coverArt
            titleLabel.text = music.title
            artistLabel.text = music.artist
            albumLabel.text = music.album
        }
    }
    
    func configureView(with music: Music) {
        self.inputModel = music
        
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
