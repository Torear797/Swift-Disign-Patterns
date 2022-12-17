import Foundation

protocol BaseCommand {
    func undo() -> String
    func forward(_ str: String)
}

final class StringUndoCommand: BaseCommand {
    
    private var originalString: String
    private var currentString: String
    
    init(argument: String) {
        self.originalString = argument
        self.currentString = argument
    }
    
    func undo() -> String {
        currentString.removeLast()
        return currentString
    }
    
    func forward(_ str: String) {
        currentString.append(str)
    }
}

final class CommandExecutor {
    private var arrayOfCommand: [BaseCommand] = []
    
    func addCommand(command: BaseCommand) {
        arrayOfCommand.append(command)
    }
    
    func forward(_ str: String) {
        for command in arrayOfCommand {
            command.forward(str)
        }
    }
    
    func undoLast() -> String {
        var title = String()
        
        for command in arrayOfCommand {
            title = command.undo()
        }
        
        return title
    }
}


func mainCommand() {
    let commandExecutor = CommandExecutor()
    var cmdUndo: StringUndoCommand?
    
    var myText = ""
    
    //Write Action
    let newText = "Jaffa Cri"
    
    cmdUndo = StringUndoCommand(argument: myText)
    commandExecutor.addCommand(command: cmdUndo!)
    commandExecutor.forward(newText)
    
    //UndoAction
    myText = commandExecutor.undoLast()
}
