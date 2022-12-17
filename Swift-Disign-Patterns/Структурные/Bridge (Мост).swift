import UIKit

protocol DayPickerViewDataSources {
    func dayPickerCount(_ dayPicker: DayPickerView) -> Int
    func dayPickerTitle(_ dayPicker: DayPickerView, indexPath: IndexPath) -> String
}

final class DayPickerView: UIControl {
    public var dataSource: DayPickerViewDataSources? {
        didSet {
            setupView()
        }
    }
    
    private var buttons: [UIButton] = []
    private var stackView: UIStackView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        stackView.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        let count = dataSource?.dayPickerCount(self)
        
        for item in 0..<count! {
            let indexPath = IndexPath(row: item, section: 0)
            let title = dataSource?.dayPickerTitle(self, indexPath: indexPath)
            let button = UIButton(type: .system)
            button.setTitle(title, for: .normal)
            button.tag = item
            button.setTitleColor(.lightGray, for: .normal)
            button.setTitleColor(.white, for: .selected)
            button.addTarget(
                self,
                action: #selector(selectedButton),
                for: .touchUpInside
            )
            buttons.append(button)
            self.addSubview(button)
        }
        
        stackView = UIStackView(arrangedSubviews: buttons)
        self.addSubview(stackView)
        
        stackView.spacing = 8
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.distribution = .fillEqually
    }
    
    @objc func selectedButton(sender: UIButton) {
    }
}


// Далее подписываемся под DayPickerViewDataSources и реализуем методы
// DayPickerViewDataSources - мост
