enum ShapeType {
    case circle
    case square
}

class Shape {
    var type: ShapeType
    
    init(type: ShapeType) {
        self.type = type
    }
    
    func area() -> Double {
        switch type {
        case .circle:
            // Calculate circle area
            return 3.14 * 5 * 5
        case .square:
            // Calculate square area
            return 10 * 10
        }
    }
}

class Console {
    static func log(_ shapes: [Shape]) {
        shapes.forEach { shape in
            print("\(shape.type) -> \(shape.area())")
        }
    }
}


//Console.log([Shape(type: .circle), Shape(type: .square)])
