import Cocoa

enum CarError : Error {
    case lowGear, highGear
}

struct Car {
    let model : String
    let numSeats : Int
    var gear : Int = 1
    
 
    
    init(model: String, numSeats: Int, gear: Int) throws {
        self.model = model
        self.numSeats = numSeats
        if(gear <= 0) {
            throw CarError.lowGear
        } else if (gear > 10) {
            throw CarError.highGear
        } else {
            self.gear = gear
        }
        print("\(model) has been entered into the system.")
        
    }
    mutating func changeGear(num: Int)  {
        if (num <= 0) {
            print("Gear cannot be less than 1")
        } else if (num > 10) {
            print("Gear cannot exceed 10")
        } else {
            self.gear = num
            print("Gear successfully changed to \(num)")
            
        }
    }
    
}

do {
    var newCar = try Car(model: "Ferrari", numSeats: 4, gear: 1)
    newCar.changeGear(num: 12)
    print(newCar)

} catch CarError.highGear {
    print("Gear cannot be more than 10, please create entry again.")
} catch CarError.lowGear {
    print("Gear cannot be lower than 1, please create entry again.")
}
