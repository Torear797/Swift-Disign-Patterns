import Foundation
import UIKit

final class ImageSaverFacade {
    private let pathProvider = PathProvider()
    private let dataProvider = ImageDataProvider()
    
    public func save(image: UIImage, type: ImageType, fileName: String, isOverwrite: Bool) throws {
        let destinationURL = try pathProvider.createDestinationPath(fileName: fileName)
        let imageData = try dataProvider.data(from: image, type: type)
        let writeOptions: Data.WritingOptions = isOverwrite ? .atomic : .withoutOverwriting
        try imageData.write(to: destinationURL, options: writeOptions)
    }
}
