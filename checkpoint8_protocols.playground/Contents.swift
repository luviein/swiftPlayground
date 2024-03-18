import Cocoa

protocol Building {
    var roomNum : Int {get}
    var cost : Int {get set}
    var agent : String {get}
    
    
}

extension Building{
    func printSummary() {
        print("There are a total of \(roomNum) rooms, costing $\(cost). Managed by \(agent).")
    }
}

struct House : Building {
    var roomNum : Int
    var cost : Int
    var agent : String
}


struct Office : Building {
    var roomNum : Int
    var cost : Int
    var agent : String
}

var house = House(roomNum: 5, cost: 4950, agent: "Yenleng")
let office = Office(roomNum: 10, cost: 90302, agent: "Deyi")

house.cost = 2405
house.printSummary()
office.printSummary()


