import Cocoa

enum RootError : Error {
    case outOfBounds, noRoot
}

func findSquareRoot(_ num : Int) throws -> Int {
    var root = 0;
    if num > 10_000 || num < 1 {
        throw RootError.outOfBounds
    }
    
    for i in 1...100 {
            if num / i == i {
                print(i)
                root = i
            }
    }
    if root == 0 {
        throw RootError.noRoot
    }
    
  
    return root
}
let squareTest = 97

do {
    
    let sqrRoot = try findSquareRoot(squareTest)
    print(sqrRoot)
}catch RootError.outOfBounds {
    print("Out of Bounds")
}catch RootError.noRoot {
    print("No Root Found")
}


