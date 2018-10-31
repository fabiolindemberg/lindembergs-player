//
//  ArtistDetail.swift
//  lindembergsPlayer
//
//  Created by Fabio Lindemberg on 30/10/18.
//  Copyright © 2018 Fábio Lindemberg. All rights reserved.
//

import UIKit

class ViewArtistDetail: UIViewController {

    var artist: Artist!
    let svMain: UIStackView = UIStackView()
    var imArtist = UIImageView()
    var lbArtistName = UILabel()
    var lbArtistGenre = UILabel()
    var tvSongs: UITableView = {
        var tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()

    init(artist: Artist) {
        super.init(nibName: nil, bundle: nil)
        self.artist = artist
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imArtist.image = artist.image
        lbArtistName.text = artist.name
        lbArtistGenre.text = artist.genre

        setupUI()
    }
    
    func setupUI2(){
        
        self.title = "Artist"
        self.view.backgroundColor = UIColor.white

        
        view.addSubview(imArtist)
        
    }
    
    func setupUI(){
        
        self.title = "Artist"
        self.view.backgroundColor = UIColor.white
        //tfArtistName.textColor = UIColor.white
        lbArtistName.textAlignment = .center
        lbArtistName.font = UIFont.boldSystemFont(ofSize: 20)
        
        lbArtistGenre.textColor = UIColor.black
        lbArtistGenre.textAlignment = .center
        
        
        //if let window = UIApplication.shared.keyWindow {
        view.addSubview(svMain)
        svMain.translatesAutoresizingMaskIntoConstraints = false
        svMain.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16).isActive = true
        svMain.bottomAnchor.constraint(equalToSystemSpacingBelow: view.bottomAnchor, multiplier: 0).isActive = true
        svMain.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        svMain.axis = .vertical
        svMain.distribution = .fillProportionally
        svMain.addArrangedSubview(imArtist)
        svMain.addArrangedSubview(lbArtistName)
        svMain.addArrangedSubview(lbArtistGenre)
        
        tvSongs.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
        tvSongs.delegate = self
        tvSongs.dataSource = self

        view.addSubview(tvSongs)
        tvSongs.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        tvSongs.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tvSongs.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tvSongs.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        //svMain.addArrangedSubview(tvSongs)
        
        //tvSongs.leadingAnchor.constraint(equalTo: svMain.arrangedSubviews[3].leadingAnchor).isActive = true
        //tvSongs.trailingAnchor.constraint(equalTo: svMain.arrangedSubviews[3].trailingAnchor).isActive = true
        //tvSongs.topAnchor.constraint(equalTo: svMain.arrangedSubviews[3].topAnchor).isActive = true
        //tvSongs.bottomAnchor.constraint(equalTo: svMain.arrangedSubviews[3].bottomAnchor).isActive = true
        //tvSongs.widthAnchor.constraint(equalToConstant: 200).isActive = true
        //tvSongs.heightAnchor.constraint(equalToConstant: 200).isActive = true
        //t//vSongs.centerXAnchor.constraint(equalTo: svMain.arrangedSubviews[3].centerXAnchor).isActive = true
        //tvSongs.centerYAnchor.constraint(equalTo: svMain.arrangedSubviews[3].centerYAnchor).isActive = true

        imArtist.translatesAutoresizingMaskIntoConstraints = false
        imArtist.widthAnchor.constraint(equalToConstant: 200).isActive = true
        imArtist.heightAnchor.constraint(equalToConstant: 200).isActive = true
        imArtist.centerXAnchor.constraint(equalTo: svMain.arrangedSubviews[0].centerXAnchor).isActive = true
        imArtist.centerYAnchor.constraint(equalTo: svMain.arrangedSubviews[0].centerYAnchor).isActive = true
        

    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
     }
    */

}

extension ViewArtistDetail: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let songs = artist.songs {
            return songs.count
        }else{
            return 0
        }

    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath as IndexPath)
        cell.textLabel?.textColor = UIColor.black
        if let songs = artist.songs {
            cell.textLabel?.text = songs[indexPath.row].name
        }
        
        return cell
    }

    
    
}
