//
//  ArtistFeed.swift
//  lindembergsPlayer
//
//  Created by Fabio Lindemberg on 29/10/18.
//  Copyright © 2018 Fábio Lindemberg. All rights reserved.
//

import UIKit

class ViewArtistFeed: UITableViewController {
    
    let cellId = "cellId"
    
    lazy var viewModel: ViewModelArtist = {
        return ViewModelArtist()
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        viewModel.getData()
        
        viewModel.reloadDataWithClosure = { [weak self] () in
            DispatchQueue.main.async {
                self?.tableView.reloadData()
            }
        }
        tableView.reloadData()
        self.title = "Artists"
        
    }
    
    func setupView(){
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
    }
    
}

extension ViewArtistFeed {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfArtists
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId)!
        let artist = viewModel.getArtist(index: indexPath.row)
        cell.textLabel?.text = artist.name
        cell.detailTextLabel?.text = artist.genre
        if let image = artist.image {
            cell.imageView?.image = image
        }        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let artistDetail = ViewArtistDetail(artist: viewModel.getArtist(index: indexPath.item))
        self.navigationController?.pushViewController(artistDetail, animated: true)
    }
    
}


