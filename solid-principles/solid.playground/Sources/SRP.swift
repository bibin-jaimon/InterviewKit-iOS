import Foundation

public class DebtCalculatorOld {
    
    private var totalDebt: Int = 0
    
    public init(totalCalories: Int = 0) {
        self.totalDebt = totalCalories
    }
    
    public func update(_ amount: Int) {
        self.totalDebt += amount
        
        if self.totalDebt > 500 {
            //Notify user about the
            print("Limit Reached")
        }
    }
}

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
