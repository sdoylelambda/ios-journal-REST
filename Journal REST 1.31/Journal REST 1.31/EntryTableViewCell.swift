import UIKit

class EntryTableViewCell: UITableViewCell {
    
    var entry: Entry? {
        didSet {
            updateViews()
        }
    }
    
    func updateViews() {
        titleText.text = entry?.title
        textField.text = entry?.bodyText
    //    timeStamp. = entry?.timeStamp
    }

    @IBOutlet weak var titleText: UILabel!
    @IBOutlet weak var timeStamp: UILabel!
    @IBOutlet weak var textField: UILabel!
    
}
