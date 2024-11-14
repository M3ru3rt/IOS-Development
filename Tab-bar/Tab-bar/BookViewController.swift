//
//  BookViewController.swift
//  Tab-bar
//
//  Created by Balgabek Zhaksylyk on 13.11.2024.
//

import UIKit
struct Book{
    let title: String
    let author: String
    let year: String
    let coverImage: UIImage
}

class BookViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    private var selectedBook: Book?
    
    var books: [Book] = [
               Book(title: "The Great Gatsby", author: "F. Scott Fitzgerald", year: "1925", coverImage: UIImage(named: "tgg") ?? UIImage()),
               Book(title: "Moby-Dick", author: "Herman Melville", year: "1851", coverImage: UIImage(named: "md") ?? UIImage()),
               Book(title: "1984", author: "George Orwell", year: "1949", coverImage: UIImage(named: "1984") ?? UIImage()),
               Book(title: "To Kill a Mockingbird", author: "Harper Lee", year: "1960", coverImage: UIImage(named: "tkam") ?? UIImage()),
               Book(title: "Pride and Prejudice", author: "Jane Austen", year: "1813", coverImage: UIImage(named: "pap") ?? UIImage()),
               Book(title: "War and Peace", author: "Leo Tolstoy", year: "1869", coverImage: UIImage(named: "wap") ?? UIImage()),
               Book(title: "Crime and Punishment", author: "Fyodor Dostoevsky", year: "1866", coverImage: UIImage(named: "cap") ?? UIImage()),
               Book(title: "The Catcher in the Rye", author: "J.D. Salinger", year: "1951", coverImage: UIImage(named: "tcitr") ?? UIImage()),
               Book(title: "The Hobbit", author: "J.R.R. Tolkien", year: "1937", coverImage: UIImage(named: "th") ?? UIImage()),
               Book(title: "Fahrenheit 451", author: "Ray Bradbury", year: "1953", coverImage: UIImage(named: "far") ?? UIImage())
           ]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
    


    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destVC = segue.destination as? BookDetialViewController else {
            return
        }
        
        if let book = selectedBook {
            destVC.configureView(with: book)
        }
    }


}

extension BookViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BookCell", for: indexPath) as! BookCell
        let book = books[indexPath.row]
        
        cell.configure(with: book)
        
        return cell
    }
}

extension BookViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedBook = books[indexPath.row]
        performSegue(withIdentifier: "showBookDetail", sender: nil)
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
