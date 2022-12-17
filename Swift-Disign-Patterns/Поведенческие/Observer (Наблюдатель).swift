import Foundation

protocol Observer: AnyObject {
    func update(subject: NotifyCenter)
}

final class NotifyCenter {
    var state: Int = {
        Int(arc4random_uniform(10))
    }()
    
    private lazy var observers = [Observer]()
    
    func subscribe(_ observer: Observer) {
        observers.append(observer)
    }
    
    func unscribe(_ observer: Observer) {
        if let index = observers.firstIndex(where: { $0 === observer }) {
            observers.remove(at: index)
        }
    }
    
    func notify() {
        observers.forEach({ $0.update(subject: self) })
    }
    
    func someBisinessLogic() {
        // logic
        
        notify()
    }
}

final class ConcreateObserverA: Observer {
    func update(subject: NotifyCenter) {
        print("New Data \(subject.state)")
    }
    
}

func mainObserver() {
    let nc = NotifyCenter()
    let observer = ConcreateObserverA()
    
    // changes
    nc.someBisinessLogic()
    
    // subscribe
    nc.subscribe(observer)
    
    // unscribe
    nc.unscribe(observer)
}
