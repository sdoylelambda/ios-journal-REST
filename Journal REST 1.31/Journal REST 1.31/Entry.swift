import Foundation

struct Entry: Codable, Equatable {
    let identifier: String
    var title: String
    var bodyText: String
    var timeStamp: Date
    
    // may need to initialize time stamp with default value??
    init(identifier: String, title: String, bodyText: String, timeStamp: Date) {
        self.identifier = identifier
        self.title = title
        self.bodyText = bodyText
        self.timeStamp = timeStamp
    }
}
