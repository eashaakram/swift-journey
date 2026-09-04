import Foundation

// Here EmployeeModel is conforming to the protocol EmployeeHasAName, which means it must have a property called name of type String. The protocol acts as a blueprint that defines what properties or methods a conforming type must implement. 
struct EmployeeModel : EmployeeHasAName {
    let title: String 
    let name: String
}

// Its a rule and anything that conforms to this protocol must have whatever we put in here
protocol EmployeeHasAName {
    var name: String 
}
