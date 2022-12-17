public protocol Coping {
    init(_ prototype: Self)
}

extension Coping {
    public func copy() -> Self {
        type(of: self).init(self)
    }
}

final class User: Coping {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    required convenience init(_ prototype: User) {
        self.init(name: prototype.name)
    }
}
