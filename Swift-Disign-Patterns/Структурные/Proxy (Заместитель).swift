import Foundation

protocol ILoadFiles {
    func loadFile() -> String
}

final class NetworkService: ILoadFiles {
    func loadFile() -> String {
       "network image"
    }
    
    
}

final class CashService: ILoadFiles {
    func loadFile() -> String {
        "cash image"
    }
    
    
}

final class Proxy: ILoadFiles {
   
    private var isCash = false
    private let network: ILoadFiles = NetworkService()
    private let cash: ILoadFiles = CashService()
    
    func loadFile() -> String {
        if isCash {
           return cash.loadFile()
        }
        else {
           return network.loadFile()
        }
    }
    
    
}
