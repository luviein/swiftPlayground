import Cocoa
//
//let awesomeTalk = {
//    print("Here's a great talk!")
//}
//func deliverTalk(name: String, type: () -> Void) {
//    print("My talk is called \(name)")
//    type()
//}
//deliverTalk(name: "My Awesome Talk", type: awesomeTalk)

struct Doctor {
    var name: String
    var location: String
    private var currentPatient = "No one"
}
let drJones = Doctor(name: "Esther Jones", location: "Bristol")
