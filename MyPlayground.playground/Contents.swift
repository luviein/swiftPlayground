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

func repeatAction(count: Int, action: () -> Void) {
    for _ in 0..<count {
        action()
    }
}
repeatAction(count: 5) {
    print("Hello, world!")
}
repeatAction(count: 3) {
    print("Repeating")
}
