//
//  BookDetialViewController.swift
//  Tab-bar
//
//  Created by Balgabek Zhaksylyk on 15.11.2024.
//

import UIKit

class BookDetialViewController: UIViewController {

    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var inputModel: Book?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let book = inputModel{
            yearLabel.text = book.year
            authorLabel.text = book.author
            titleLabel.text = book.title
            imageView.image = book.coverImage
        }
        // Do any additional setup after loading the view.
    }
    
    func configureView(with book: Book) {
        self.inputModel = book
        
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
