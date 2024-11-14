//
//  MusicViewController.swift
//  Tab-bar
//
//  Created by Balgabek Zhaksylyk on 13.11.2024.
//

import UIKit

struct Music{
    let title: String
    let artist : String
    let album: String
    let coverArt: UIImage
}

class MusicViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    private var selectedMusic: Music?
    
    var musics: [Music] = [
                Music(title: "Bohemian Rhapsody", artist: "Queen", album: "A Night at the Opera", coverArt: UIImage(named: "b_h") ?? UIImage()),
                Music(title: "Americano", artist: "Lady Gaga", album: "Born This Way", coverArt: UIImage(named: "americano") ?? UIImage()),
                Music(title: "Antarctica", artist: "The Hardkiss", album: "Perfection Is a Lie", coverArt: UIImage(named: "antarctica") ?? UIImage()),
                Music(title: "Shadows of Time", artist: "The Hardkiss", album: "Stones And Honey", coverArt: UIImage(named: "s_o_t") ?? UIImage()),
                Music(title: "I Wanna Be Yours", artist: "Arctic Monkeys", album: "AM", coverArt: UIImage(named: "am") ?? UIImage()),
                Music(title: "Do I Wanna Know?", artist: "Arctic Monkeys", album: "AM", coverArt: UIImage(named: "am") ?? UIImage()),
                Music(title: "Why’d You Only Call Me When You’re High?", artist: "Arctic Monkeys", album: "AM", coverArt: UIImage(named: "am") ?? UIImage()),
                Music(title: "Shape of My Heart", artist: "Sting", album: "Ten Summoner’s Tales", coverArt: UIImage(named: "somh") ?? UIImage()),
                Music(title: "Dancing Queen", artist: "ABBA", album: "Arrival", coverArt: UIImage(named: "dq") ?? UIImage()),
                Music(title: "Voulez-Vous", artist: "ABBA", album: "Voulez-Vous", coverArt: UIImage(named: "vv") ?? UIImage())
            ]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
    


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destVC = segue.destination as? MusicDetialViewController else {
            return
        }
        
        if let music = selectedMusic {
            destVC.configureView(with: music)
        }
    }


}

extension MusicViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return musics.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MusicCell", for: indexPath) as! MusicCell
        let music = musics[indexPath.row]
        
        cell.configure(with: music)
        
        return cell
    }
}

extension MusicViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedMusic = musics[indexPath.row]
        performSegue(withIdentifier: "showMusicDetail", sender: nil)
        tableView.deselectRow(at: indexPath, animated: true)
        }
}
