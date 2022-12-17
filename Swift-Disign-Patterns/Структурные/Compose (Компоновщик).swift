import Foundation

protocol Compose {
    var name: String { get set }
    func showContent() -> Any
    func addComponent(c: Compose)
    func contentCount() -> Int
}

final class File: Compose {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func showContent() -> Any {
        return name
    }
    
    func addComponent(c: Compose) {
        print("Error: К файлу нельзя добавить компонент")
    }
    
    func contentCount() -> Int { 1}
    
    
}

final class Folder: Compose {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    private var contentArray: [Compose] = []
    
    func showContent() -> Any {
        contentArray
    }
    
    func addComponent(c: Compose) {
        contentArray.append(c)
    }
    
    func contentCount() -> Int {
        contentArray.count
    }
    
    
}
