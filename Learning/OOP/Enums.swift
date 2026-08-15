import Foundation

// Enum is the same as Struct except we know all cases at runtime

struct CarModel {
    let brand: CarBrandOption
    let model: String
}

struct CarBrand {
    let title: String
}

// // Enums are stored in memory the same way as a Struct but we cannot mutate them

// enum CarBrandOption {
//     case ford
//     case toyota
//     case honda
// }

// Also write like this
enum CarBrandOption {
    case ford, toyota, honda
    // faida ya ha ka agr hum koi case miss kr deta hn toh ya error da ga ka sara use kro agr hum sara use na krna chaha toh default case da skta issay error ni ayega 
    
    // property
    var title: String {
        switch self {
        case .ford:
            return "Ford"
        case .toyota:
            return "Toyota"
        // case .honda:   
        //     return "Honda" 

        // But if you don't want to explicitly handle .honda, you can use: 
        default: 
        return "Default"
        // default doesn't mean "ignore the missing case." It means "for any case that wasn't matched above, do this.
        }


        // if self == .ford {
        //     return "Ford"
        // } else if self == .toyota {
        //     return "Honda"
        // } else {
        //     return "Default value"
        // }
    }
}

let brand = CarBrandOption.ford
print(brand.title)

// var car1: CarModel = CarModel(brand: "Ford", model: "Fiesta")
// var car1: CarModel = CarModel(brand: "Ford", model: "Focus")
// var car1: CarModel = CarModel(brand: "Toyota", model: "Camry")

// var car1: CarModel = CarModel(brand: CarBrand(title: "Ford"), model: "Fiesta")
// var car2: CarModel = CarModel(brand: CarBrand(title: "Ford"), model: "Focus")
// var car3: CarModel = CarModel(brand: CarBrand(title: "Toyota"), model: "Camry")


// var brand1 = CarBrand(title: "Ford")
// var brand2 = CarBrand(title: "Toyota")

// var car1: CarModel = CarModel(brand: brand1, model: "Fiesta")
// var car2: CarModel = CarModel(brand: brand1, model: "Focus")
// var car3: CarModel = CarModel(brand: brand2, model: "Camry")

var car1 = CarModel(brand: .ford, model: "Fiesta")
var car2 = CarModel(brand: .ford, model: "Focus")
var car3 = CarModel(brand: .toyota, model: "Camry")