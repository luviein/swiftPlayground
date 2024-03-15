import Cocoa

class Animal{
    let legs : Int = 4
}

class Dog : Animal {
    func speak() {
        print("Woof")
    }
}

class Cat : Animal {
    var isTame : Bool
    func speak() {
        print("Meow")
    }
    init(isTame: Bool) {
        self.isTame = isTame
    
    }
}

class Corgi : Dog {
    override func speak() {
        print("Corgi says bark")
    }
}

class Poodle : Dog {
   
}

class Persian : Cat {
    override func speak() {
        print("Purr")
    }
}

class Lion : Cat {
    override func speak () {
        print("Roar")
    }
}

let persianCat = Persian(isTame: false)
persianCat.speak()
let poodleDog = Poodle()
poodleDog.speak()
print("Poodle Dog has \(poodleDog.legs) legs")
let lion = Lion(isTame: false)
lion.speak()
