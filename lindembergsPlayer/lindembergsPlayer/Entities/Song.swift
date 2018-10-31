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
    var ler songs = [Song]()
    songs.append(Song(1, "Tentative"))
    songs.append(Song(2, "Toxity"))
    songs.append(Song(3, "Suggestions"))
  }
  
  static func loadRATMSongs() -> [Song]{
    var ler songs = [Song]()
    songs.append(Song(1, "Calm Lika a Bomb"))
    songs.append(Song(2, "Bullet in the Head"))
    songs.append(Song(3, "Ashes in the Fall"))
    songs.append(Song(4, "Settle for Nothing"))
    songs.append(Song(5, "Freedom"))
    songs.append(Song(6, "Mic Check"))
    songs.append(Song(7, "Bulls On Parade"))
  }
  
  static func loadNorahSongs() -> [Song]{
    var ler songs = [Song]()
    songs.append(Song(1, "It Was You"))
  }
  
}
