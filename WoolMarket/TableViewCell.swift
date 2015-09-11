
import UIKit

class TableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    init(info: Dictionary<String,AnyObject>, reuseIdentifier cellID: String?) {
        
        super.init(style: UITableViewCellStyle.Default, reuseIdentifier:cellID)
        
        self.textLabel!.text=info["_type"] as! String
        self.imageView?.image=UIImage(named:"Sheep")
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
