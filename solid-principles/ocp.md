# #2 SOLID - Open Close Principle | Swift | iOS Development

```
It states that software entities (classes, modules, functions, etc.) 
should be open for extension but closed for modification.
```
In the below example, the `Shape` class violates the `Open-Closed Principle` because it is not closed for modification. 
Whenever a new shape is added (e.g., triangle, rectangle), the Shape class needs to be modified to include a new case in the ShapeType enum and update the area() method accordingly. This violates the principle as the class is not closed for modification.


```swift
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
```

```swift
    let shapes: [Shape] = [Shape(type: .circle), Shape(type: .square)]
```
In the below example, the Open-Closed Principle is applied correctly. The Shape protocol defines the contract for shapes, and different shapes (e.g., Circle and Square) implement the Shape protocol and provide their own implementation of the area() method. Now, if you want to add a new shape (e.g., Triangle), you can simply create a new struct conforming to the Shape protocol without modifying any existing code. This adheres to the Open-Closed Principle as the code is closed for modification but open for extension.
```swift
    enum ShapeType {
        case circle
        case square
    }

    protocol Shape {
        func area() -> Double
    }

    struct Circle: Shape {
        func area() -> Double {
            // Calculate circle area
            return 3.14 * 5 * 5
        }
    }

    struct Square: Shape {
        func area() -> Double {
            // Calculate square area
            return 10 * 10
        }
    }
```
```swift
    let shapes: [Shape] = [Circle(), Square()]
```