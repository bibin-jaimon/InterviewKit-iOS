# #3 SOLID - Liskov Substitution Principle | Swift | iOS Development

> LSP states that objects of a superclass should be replaceable with objects of its subclass without affecting the correctness of the program - Barbara Liskov (1987)


In the below example,
-  We have a class hierarchy representing different shapes: a superclass `Shape` and two subclasses, `Rectangle` and `Circle`.
- The `Shape` class acts as a superclass defining a common interface with the `area()` method.
- Both Rectangle and Circle subclasses inherit from Shape and provide their own implementation of the area() method.

```swift
class Shape {
    func area() -> Double {
        fatalError("Subclasses must override area() method.")
    }
}

class Rectangle: Shape {
    var width: Double
    var height: Double
    
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
    
    override func area() -> Double {
        return width * height
    }
}

class Circle: Shape {
    var radius: Double
    
    init(radius: Double) {
        self.radius = radius
    }
    
    override func area() -> Double {
        return Double.pi * radius * radius
    }
}
```

- In the printArea() function, we accept an instance of Shape as a parameter. 
- The area() method will be dynamically dispatched based on the actual type of the object at runtime, and the correct implementation will be executed.
- This example demonstrates how the Liskov Substitution Principle allows us to treat objects of different subclasses as interchangeable, as long as they conform to the common superclass interface.

```swift
func printArea(shape: Shape) {
    let area = shape.area()
    print("Area: \(area)")
}

let rectangle = Rectangle(width: 4, height: 5)
let circle = Circle(radius: 3)

printArea(shape: rectangle) // Output: Area: 20.0
printArea(shape: circle)    // Output: Area: 28.274333882308138
```