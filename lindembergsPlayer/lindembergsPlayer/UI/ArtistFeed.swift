//
//  ArtistFeed.swift
//  lindembergsPlayer
//
//  Created by Fabio Lindemberg on 29/10/18.
//  Copyright © 2018 Fábio Lindemberg. All rights reserved.
//

import UIKit

class ViewArtistFeed: UITableViewController {
    
    var artists = Artist.loadData()
    let cellId = "cellId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        tableView.reloadData()
        
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
        return artists.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId)!
        cell.textLabel?.text = artists[indexPath.item].name
        cell.detailTextLabel?.text = artists[indexPath.item].genre
        if let image = artists[indexPath.item].image {
            cell.imageView?.image = image
        }
        
        return cell
    }
    
    
}


