//
//  ViewModelArtistFeed.swift
//  lindembergsPlayer
//
//  Created by Fabio Lindemberg on 31/10/18.
//  Copyright © 2018 Fábio Lindemberg. All rights reserved.
//

import Foundation

class ViewModelArtist {
    
    private var isLoading: Bool = false
    
    private var artists: [Artist] = [Artist]() {
        didSet {
            self.reloadDataWithClosure?()
        }
    }
    
    var numberOfArtists: Int {
        return artists.count
    }
    
    func getArtist(index: Int)->Artist{
        return artists[index]
    }
    
    var reloadDataWithClosure: (()->())?
    
    func getData(){
        self.isLoading = true
        
        // do some processing here
        artists = Artist.loadData()
        
        self.isLoading = false
        
    }
}
