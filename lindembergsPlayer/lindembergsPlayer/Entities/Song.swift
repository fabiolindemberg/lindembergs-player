import UIKit

class Song {
  var id: Int?
  var name: String?
  // song: [bite]?
  
  init(id: Int, name: String){
    self.id = id
    self.name = name
  }
  
  static func loadSOADSongs() -> [Song]{
    var songs = [Song]()
    songs.append(Song(id: 1, name: "Tentative"))
    songs.append(Song(id: 2, name: "Toxity"))
    songs.append(Song(id: 3, name: "Suggestions"))
    return songs
  }
  
  static func loadRATMSongs() -> [Song]{
    var songs = [Song]()
    songs.append(Song(id: 1, name: "Calm Lika a Bomb"))
    songs.append(Song(id: 2, name: "Bullet in the Head"))
    songs.append(Song(id: 3, name: "Ashes in the Fall"))
    songs.append(Song(id: 4, name: "Settle for Nothing"))
    songs.append(Song(id: 5, name: "Freedom"))
    songs.append(Song(id: 6, name: "Mic Check"))
    songs.append(Song(id: 7, name: "Bulls On Parade"))
    return songs
  }
  
  static func loadNorahSongs() -> [Song]{
    var songs = [Song]()
    songs.append(Song(id: 1, name: "It Was You"))
    return songs
  }
  
}
