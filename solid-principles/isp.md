# #4 SOLID - Interface Segregation Principle | Swift | iOS Development

In the following example we have defined a `PrinterProtocol` which we can use to create multiple type of printers.

We have added every methods in one protocol. So, even if we want to create a simple printer we will have to implement every function in the protocol. We can provide default impelemention for the protocols but still it's violates the ISP because the `SimplePrinter` could call the default implementation as well. That is not expected behaviour. A `SimplePrinter` doesn't have to call `receiveFax()` method.

```swift
protocol PrinterProtocol {
    func printDocument()
    func scanDocument()
    func sendFax()
    func receiveFax()
}

extension PrinterProtocol {
    func receiveFax() {
        print("Default: Receiving fax...")
    }
}

class SimplePrinter: PrinterProtocol {
    func printDocument() {
        print("Printing document...")
    }

    func scanDocument() {
        print("Scanning document...")
    }

    func sendFax() {
        print("Sending fax...")
    }

    func receiveFax() {
        print("Receiving fax...")
    }
}
```

Let's check how we can implement as per ISP 🚀

- Clients should not be forced to depend on interfaces they don't use.
- Larger, general-purpose interfaces should be segregated into smaller, more specific interfaces that are tailored to the needs of individual clients.
- The goal is to avoid the situation where a client is required to implement methods that are irrelevant to its use case.
- This promotes modularity, maintainability, flexibility, and testability in software systems.

```swift

protocol Printer {
    func printDocument()
}

protocol Scanner {
    func scanDocument()
}

protocol FaxMachine {
    func sendFax()
    func receiveFax()
}

class AllInOnePrinter: Printer, Scanner, FaxMachine {
    func printDocument() {
        print("Printing document...")
    }

    func scanDocument() {
        print("Scanning document...")
    }

    func sendFax() {
        print("Sending fax...")
    }

    func receiveFax() {
        print("Receiving fax...")
    }
}

class SimplePrinter: Printer {
    func printDocument() {
        print("Printing document...")
    }
}

```
