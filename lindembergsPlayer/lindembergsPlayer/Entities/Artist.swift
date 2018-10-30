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
    
    init(name: String, genre: String, image: UIImage?){
        self.name = name
        self.genre = genre
        self.image = image
    }
    
    static func loadData()-> [Artist] {
        var artists = [Artist]()
        artists.append(Artist(name: "Nora Johnes", genre: "Soul", image: UIImage(named: "norahjones")))
        artists.append(Artist(name: "Rage Against the Machine", genre: "Rock", image: UIImage(named: "RageAgainstTheMachine")))
        artists.append(Artist(name: "System of a Down", genre: "Rock", image: UIImage(named: "System-Of-A-Down-Band-Logo")))

        return artists
    }
    
}
