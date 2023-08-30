# iOS interview preparation guide | 2023

## Table of Contents
- [The Protocol](#the-protocol)
  - [How to write generic protocol in Swift](#how-to-write-generic-protocol-in-swift)
- What are SOLID principles
  - [Single Responsibility Principle (SRP)](https://github.com/bibin-jaimon/2023-ios-interview-prep/blob/development/solid-principles/srp.md)
  - [Open/Closed Principle (OCP)](https://github.com/bibin-jaimon/2023-ios-interview-prep/blob/development/solid-principles/ocp.md)
  - [Liskov Substitution Principle (LSP)](https://github.com/bibin-jaimon/2023-ios-interview-prep/blob/development/solid-principles/lsp.md)
  - Interface Segregation Principle (ISP):
  - Dependency Inversion Principle (DIP):

# The Protocol 
### How to write Generic Protocol in Swift

```swift
protocol StackProtocol {
    associatedtype Element
    
    mutating func push(_ element: Element)
    mutating func pop() -> Element?
}

struct IntStack: StackProtocol {
    typealias Element = Int
    var stack = [Element]()

    mutating func push(_ element: Element) {
        stack.append(element)
    }
    
    mutating func pop() -> Element? {
        stack.popLast()
    }
}

struct StringStack: StackProtocol {
    typealias Element = String
    var stack: [Element] = []
    
    mutating func push(_ element: String) {
        stack.append(element)
    }
    
    mutating func pop() -> String? {
        stack.popLast()
    }
    
}
```
