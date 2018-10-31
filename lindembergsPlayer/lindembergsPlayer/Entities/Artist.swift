//
//  Artist.swift
//  lindembergsPlayer
//
//  Created by Fabio Lindemberg on 29/10/18.
//  Copyright © 2018 Fábio Lindemberg. All rights reserved.
//

import UIKit

class Artist {
    
    var name: String!
    var image: UIImage!
    var genre: String?
    var songs: [Song]?
    
    init(){}
    
    init(name: String, genre: String, image: UIImage?, songs: [Song]){
        self.name = name
        self.genre = genre
        self.image = image
        self.songs = songs
    }
    
    static func loadData()-> [Artist] {
        var artists = [Artist]()
        artists.append(Artist(name: "Norah Jones", genre: "Soul", image: UIImage(named: "norahjones"), songs: Song.loadNorahSongs()))
        artists.append(Artist(name: "Rage Against the Machine", genre: "Rock", image: UIImage(named: "RageAgainstTheMachine"), songs: Song.loadRATMSongs()))
        artists.append(Artist(name: "System of a Down", genre: "Rock", image: UIImage(named: "System-Of-A-Down-Band-Logo"), songs: Song.loadSOADSongs()))

        return artists
    }
    
}
