protocol AppField {
    var title: String { get set }
    var value: String { get set }
    
    func saveValue ()
}

final class TextField: AppField {
    var title: String
    var value: String
    
    init(title: String, value: String) {
        self.title = title
        self.value = value
    }
    
    func saveValue() {
        print("save text field value")
    }
}

final class NumberField: AppField {
    var title: String
    var value: String
    
    init(title: String, value: String) {
        self.title = title
        self.value = value
    }
    
    func saveValue() {
        print("save number field value")
    }
}

enum AppFields {
    case text, number
}

final class FieldFactory {
    static let shared = FieldFactory()
    
    func createField(type: AppFields) -> AppField {
        switch type {
        case .text:
            return TextField(title: "Name", value: "")
        case .number:
            return NumberField(title: "age", value: "15")
        }
    }
}
