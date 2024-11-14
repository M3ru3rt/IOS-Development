//
//  FilmViewController.swift
//  Tab-bar
//
//  Created by Balgabek Zhaksylyk on 13.11.2024.
//

import UIKit

struct Film{
    let title: String
    let year: String
    let genre: String
    let poster: UIImage
}

class FilmViewController: UIViewController {
    private var selectedFilm: Film?
    let films: [Film] = [
            Film(title: "Friends", year: "1994-2004", genre: "Comedy", poster: UIImage(named: "friends") ?? UIImage()),
            Film(title: "Desperate Housewives", year: "2004-2012", genre: "Drama", poster: UIImage(named: "desperate_housewives") ?? UIImage()),
            Film(title: "The Vampire Diaries", year: "2009-2017", genre: "Supernatural Drama", poster: UIImage(named: "the_vampire_diarie") ?? UIImage()),
            Film(title: "Shrek", year: "2001", genre: "Animated Comedy", poster: UIImage(named: "shrek") ?? UIImage()),
            Film(title: "The Lion King", year: "1994", genre: "Animated Adventure", poster: UIImage(named: "lion_king") ?? UIImage()),
            Film(title: "Oppenheimer", year: "2023", genre: "Biographical Drama", poster: UIImage(named: "oppenheimer") ?? UIImage()),
            Film(title: "Bridgerton", year: "2020-Present", genre: "Romantic Drama", poster: UIImage(named: "bridgerton") ?? UIImage()),
            Film(title: "Once Upon a Time", year: "2011-2018", genre: "Fantasy Drama", poster: UIImage(named: "once_upon_a_time") ?? UIImage()),
            Film(title: "Avatar: The Last Airbender", year: "2005-2008", genre: "Animated Adventure", poster: UIImage(named: "avatar_nickelodeon") ?? UIImage()),
            Film(title: "The Big Bang Theory", year: "2007-2019", genre: "Comedy", poster: UIImage(named: "big_bang_theory") ?? UIImage())
        ]

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destVC = segue.destination as? FilmDetialViewController else {
            return
        }
        
        if let film = selectedFilm {
            destVC.configureView(with: film)
        }
    }

}
// MARK: - UITableViewDataSource
extension FilmViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return films.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FilmCell", for: indexPath) as! FilmCell
        let film = films[indexPath.row]

        cell.configure(with: film)

        return cell
    }
}

extension FilmViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedFilm = films[indexPath.row]
        performSegue(withIdentifier: "showFilmDetail", sender: nil)
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
