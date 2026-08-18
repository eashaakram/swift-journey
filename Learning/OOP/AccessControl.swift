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

    // public (we basically didn't need to write it) means we can get and set outside of the object itself
    public var movie1 = MovieModel(title: "Avatar", genre: .action, isFavourite: false)
    // var movie1 = MovieModel(title: "Avatar", genre: .action, isFavourite: false) means without including public it is public 

    // private means we cannot get or set outside the class
    private var movie2 = MovieModel(title: "Step Brothers", genre: .comedy, isFavourite: false)

    // read is public, set is private
    private(set) var movie3 = MovieModel(title: "Avenger", genre: .action, isFavourite: false)

    // How to update private(set) value
    func updateMovie3(isFavorite: Bool) {
        movie3.updateFavoriteStatus2(newValue: isFavorite)
    }
}

let manager = MovieManager()

// getting the value from movie1
let someValue = manager.movie1

// below updating the value of movie1 (setting )
// manager.movie1 = manager.movie1.updateFavouriteStatus(newValue: true)
manager.movie1.updateFavoriteStatus2(newValue: true)
print(manager.movie1)

// - error: 'movie2' is inaccessible due to 'private' protection level
// let someValue2 = manager.movie2
// manager.movie1.updateFavoriteStatus2(newValue: true)

// I can read movie3 and cannot update it
let someValue3 = manager.movie3
// manager.movie1.updateFavoriteStatus3(newValue: true)
manager.updateMovie3(isFavorite: true)
print(manager.movie3)