import Foundation

// Enum is the same as Struct except we know all cases at runtime

struct CarModel {
    let brand: CarBrand
    let model: String
}

struct CarBrand {
    let title: String
}

// var car1: CarModel = CarModel(brand: "Ford", model: "Fiesta")
// var car1: CarModel = CarModel(brand: "Ford", model: "Focus")
// var car1: CarModel = CarModel(brand: "Toyota", model: "Camry")

// var car1: CarModel = CarModel(brand: CarBrand(title: "Ford"), model: "Fiesta")
// var car2: CarModel = CarModel(brand: CarBrand(title: "Ford"), model: "Focus")
// var car3: CarModel = CarModel(brand: CarBrand(title: "Toyota"), model: "Camry")


var brand1 = CarBrand(title: "Ford")
var brand2 = CarBrand(title: "Toyota")

var car1: CarModel = CarModel(brand: brand1, model: "Fiesta")
var car2: CarModel = CarModel(brand: brand1, model: "Focus")
var car3: CarModel = CarModel(brand: brand2, model: "Camry")