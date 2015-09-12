
import UIKit

class GoodViewController: UITableViewController{
    
    var info:Dictionary<String,AnyObject> = Dictionary()
    


    override func viewDidLoad() {
        super.viewDidLoad()

        let WIDTH=self.view.frame.width
        let HEIGHT=self.view.frame.height
        
        self.title="羊圈"
        self.navigationController?.navigationBar.titleTextAttributes=[NSForegroundColorAttributeName : UIColor(red: CGFloat(255) / 255.0, green: CGFloat(215) / 255.0, blue: CGFloat(0) / 255.0, alpha: CGFloat(1))]
        
        self.tableView.separatorStyle = UITableViewCellSeparatorStyle.None
        
        //create a reusable cell...
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cellIdentifier")
      
        info["_type"]="金羊毛"
        info["_productName"]="余额宝"
        info["_platformName"]="阿里巴巴集团"
        info["_bonus"]="100.5"
        info["_promotionName"]="新手注册送红包"
        info["_special"]="新手专享"
        info["_date"]=["2015-9-1","2015-9-9"]
        info["_moneyTotalLimit"]="200000"
        info["_timeLimitDays"]="8天"
        info["_requireMoney"]="1000"
        info["_detailRules"]="更多详细规则"
        info["_website"]="www.sina.com.cn"
        info["_endTime"]="2015-9-16"
        info["_status"]="正在薅"

        
    }
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("select cell...")
        let goodDetailViewController=GoodDetailViewController()
        self.navigationController?.pushViewController(goodDetailViewController, animated: true)
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cellID:String="cellIdentifier"
        var cell =  GoodTableViewCell(info: self.info, reuseIdentifier:cellID)
        
        //let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier,forIndexPath:indexPath) as UITableViewCell
        if (indexPath.row%2 == 0) {
            
            cell.backgroundColor = UIColor(red: CGFloat(246) / 255.0, green: CGFloat(245) / 255.0, blue: CGFloat(241) / 255.0, alpha: CGFloat(1))
            
        }
        return cell
    }
    
    //change cell height...
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        return 88
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

