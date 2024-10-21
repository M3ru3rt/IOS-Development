//
//  ViewController.swift
//  MyFavoritesCollection
//
//  Created by Balgabek Zhaksylyk on 22.10.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!

    let favouriteMovies: [Movie] = [
            Movie(title: "Friends", year: "1994-2004", genre: "Comedy", poster: UIImage(named: "friends") ?? UIImage()),
            Movie(title: "Desperate Housewives", year: "2004-2012", genre: "Drama", poster: UIImage(named: "desperate_housewives") ?? UIImage()),
            Movie(title: "The Vampire Diaries", year: "2009-2017", genre: "Supernatural Drama", poster: UIImage(named: "the_vampire_diarie") ?? UIImage()),
            Movie(title: "Shrek", year: "2001", genre: "Animated Comedy", poster: UIImage(named: "shrek") ?? UIImage()),
            Movie(title: "The Lion King", year: "1994", genre: "Animated Adventure", poster: UIImage(named: "lion_king") ?? UIImage()),
            Movie(title: "Oppenheimer", year: "2023", genre: "Biographical Drama", poster: UIImage(named: "oppenheimer") ?? UIImage()),
            Movie(title: "Bridgerton", year: "2020-Present", genre: "Romantic Drama", poster: UIImage(named: "bridgerton") ?? UIImage()),
            Movie(title: "Once Upon a Time", year: "2011-2018", genre: "Fantasy Drama", poster: UIImage(named: "once_upon_a_time") ?? UIImage()),
            Movie(title: "Avatar: The Last Airbender", year: "2005-2008", genre: "Animated Adventure", poster: UIImage(named: "avatar_nickelodeon") ?? UIImage()),
            Movie(title: "The Big Bang Theory", year: "2007-2019", genre: "Comedy", poster: UIImage(named: "big_bang_theory") ?? UIImage())
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
    }


}
extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return favouriteMovies.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MovieCell", for: indexPath) as! MovieCell
        let movie = favouriteMovies[indexPath.row]
        cell.configure(with: movie)
        return cell
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 180, height: 270)
    }
}
