import Foundation

struct StargateChevronResultVisitor {
    func visit(_ stargate: StargateSGOne) -> Int { 20 }
    func visit(_ stargate: StargateAtlantis) -> Int { 30 }
    func visit(_ stargate: StargateUniverse) -> Int { 40 }
}

protocol StargateChevronResultVisitable {
    func accept(_ visitor: StargateChevronResultVisitor) -> Int
}

extension StargateSGOne: StargateChevronResultVisitable {
    func accept(_ visitor: StargateChevronResultVisitor) -> Int {
        visitor.visit(self)
    }
}

extension StargateAtlantis: StargateChevronResultVisitable {
    func accept(_ visitor: StargateChevronResultVisitor) -> Int {
        visitor.visit(self)
    }
}

extension StargateUniverse: StargateChevronResultVisitable {
    func accept(_ visitor: StargateChevronResultVisitor) -> Int {
        visitor.visit(self)
    }
}


func mainVisitor() {
    let SGA = StargateAtlantis()
    let count = SGA.accept(StargateChevronResultVisitor()) // 30
    print(count)
}
