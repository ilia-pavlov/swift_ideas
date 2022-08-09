import Foundation

class Triangle {

    var sideA: Int
    var sideB: Int
    var sideC: Int = 121212
    
    init() {}

    init(sideA: Int, sideB: Int, sideC: Int) {

        self.sideA = sideA
        self.sideB = sideB
        self.sideC = sideA
    }

    init(sideA: Int, sideB: Int) {

        self.sideA = sideA
        self.sideB = sideB
    }

    convenience init(equilateralWithEdge edge:Int) {
        self.init(sideA: edge, sideB: edge, sideC:edge)
    }
}

let tri:Triangle = .init(sideA: 113, sideB: 223)
print(tri.sideA)
print(tri.sideB)
print(tri.sideC)
