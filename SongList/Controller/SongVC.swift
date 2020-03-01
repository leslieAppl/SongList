//
//  ViewController.swift
//  SongList
//
//  Created by leslie on 3/1/20.
//  Copyright © 2020 leslie. All rights reserved.
//

import UIKit

class SongVC: UIViewController {
    
    var musicLibrary = MusicLibrary()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()
        
    }

    func setupTableView() {
        
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        tableView.separatorColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
    }
}

extension SongVC: UITableViewDataSource, UITableViewDelegate {
    
    //MARK: - Table View Data Source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return musicLibrary.songs.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "songCell", for: indexPath) as? SongCell else { return UITableViewCell() }
        
        let currentSong = musicLibrary.songs[indexPath.row]
        
        cell.songView.song = currentSong
        
        return cell
    }
    
    //MARK: - Table View Delegate
    
    
}
