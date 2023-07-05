# #1 SOLID - Single Responsibility Principle | Swift | iOS Development

```
SRP state that a class should have only one reason to change.
```

```swift
public class DebtCalculatorOld {
    
    private var totalDebt: Int = 0
    
    public init(totalCalories: Int = 0) {
        self.totalDebt = totalCalories
    }
    
    public func update(_ amount: Int) {
        self.totalDebt += amount
        
        if self.totalDebt > 500 {
            //Notify user about the change
            print("Limit Reached")
        }
    }
}
```

- Each class should focus on performing a single task.

- The below class is for managing debt of a user. If the total debt reaches a certain amount then we should notify the user about it. 

- Here we have added everything in one class which not recommended as per single responsibility principle.

- In future, if we want to change the notification type to be email. Then we will have to change the update function in the DebtCalculator.

- There should not be multiple reasons for a class to change.

```swift
public class DebtCalculator {
    
    private var totalDebt: Int = 0
    private var notificationManager: NotificationManager
    
    public init(totalCalories: Int = 0,
                notificationManager: NotificationManager = NotificationManager()) {
        self.totalDebt = totalCalories
        self.notificationManager = notificationManager
    }
    
    public func update(_ amount: Int) {
        self.totalDebt += amount
        
        if self.totalDebt > 500 {
            notificationManager.notify(totalDebt)
        }
    }
}

public class NotificationManager {
    
    public init() {}
    
    func notify(_ current: Int) {
        print("Limit Reached - \(current)")
    }
}
```
- Here we have seperate class for Adding debt releated features and Notification releated features.
- In future if we want to chagne the Notification type to email we can change it without making changes in `DebtCalculator`