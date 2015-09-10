
import UIKit

class GoodViewController: UITableViewController{
    


    override func viewDidLoad() {
        super.viewDidLoad()

        let WIDTH=self.view.frame.width
        let HEIGHT=self.view.frame.height
        
        self.title="羊圈"
        self.navigationController?.navigationBar.titleTextAttributes=[NSForegroundColorAttributeName : UIColor(red: CGFloat(255) / 255.0, green: CGFloat(215) / 255.0, blue: CGFloat(0) / 255.0, alpha: CGFloat(1))]
        
        self.tableView.separatorStyle = UITableViewCellSeparatorStyle.None
      

    }
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("select cell...")
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell=UITableViewCell()
        cell.textLabel!.text="i am cell..."
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

