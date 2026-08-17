import Foundation

// blueprint
struct MovieModel {
    let title: String
    let genre: MovieGenre
    private(set) var isFavourite: Bool

    func updateFavoriteStatus(newValue: Bool) -> MovieModel {
        MovieModel(title: title, genre: genre, isFavourite: newValue)
    }

    mutating func updateFavoriteStatus2(newValue: Bool) {
        isFavourite = newValue
    }
}

// we have different types of genre in our app that's why we make enum
enum MovieGenre {
    case comedy, action, horror
}

class MovieManager {
    
    var movie1 = MovieModel(title: "Avatar", genre: .action, isFavourite: false)

    var movie2 = MovieModel(title: "Step Brothers", genre: .comedy, isFavourite: false)

    var movie3 = MovieModel(title: "Avenger", genre: .action, isFavourite: false)
}

let manager = MovieManager()
// manager.movie1 = manager.movie1.updateFavouriteStatus(newValue: true)
manager.movie1.updateFavoriteStatus2(newValue: true)
print(manager.movie1)