import Foundation

final class PathProvider {
    func createDestinationPath(fileName: String) throws -> URL {
        guard let path = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else {
            throw ImageSaverError.couldNotCreateDestinationPath
        }
        
        let destinationPath = path.appendingPathComponent("\(fileName)")
        return destinationPath
    }
}
