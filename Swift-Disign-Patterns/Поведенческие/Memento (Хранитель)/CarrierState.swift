import Foundation

final class CarrierState {
    var state: StateLinesMemento?
    
    var linesManager: LinesManager
    
    init(linesManager: LinesManager) {
        self.linesManager = linesManager
    }
    
    public func saveLine() {
        state = linesManager.save()
    }
    
    func loadLine() {
        guard state != nil else { return }
        linesManager.load(state: state!)
    }
}
