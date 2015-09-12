
import UIKit

class GoodTableViewCell: UITableViewCell {
    
    /*
    info["_type"]="金羊毛"
    info["_productName"]="余额宝"
    info["_platformName"]="阿里巴巴集团"
    info["_bonus"]=100
    info["_promotionName"]="新手注册送红包"
    info["_special"]="新手专享"
    info["_date"]=["2015-9-1","2015-9-9"]
    info["_moneyTotalLimit"]=200000
    info["_timeLimitDays"]=8
    info["_requireMoney"]=1000
    info["_detailRules"]="更多详细规则"
    info["_website"]="www.sina.com.cn"
    info["_endTime"]="2015-9-16"
    info["_status"]="热卖中"
    */
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    init(info: Dictionary<String,AnyObject>, reuseIdentifier cellID: String?) {
        
        super.init(style:UITableViewCellStyle.Default, reuseIdentifier:cellID)
        
        
        
        
        var Width:CGFloat=UIScreen.mainScreen().bounds.width
        var Height:CGFloat=UIScreen.mainScreen().bounds.height

        var _log:UIImageView?=UIImageView(image:UIImage(named:"Sheep"))
        _log!.frame.origin=CGPoint(x: 10,y: (44-_log!.frame.height)/2)
        self.addSubview(_log!)
        
        var _type:UILabel?=UILabel(frame: CGRectMake(20+_log!.frame.width, 0, 75, 44))
        _type?.font=UIFont(name: "Arial",size: 20)
        _type?.text=info["_type"] as? String
        _type?.textColor=UIColor(red: CGFloat(255) / 255.0, green: CGFloat(215) / 255.0, blue: CGFloat(0) / 255.0, alpha: CGFloat(1))
        self.addSubview(_type!)
        
        var _status:UILabel?=UILabel(frame: CGRectMake(20+_log!.frame.width+_type!.frame.width, 0, 80, 44))
        _status?.font=UIFont(name: "Arial",size: 20)
        _status?.text=info["_status"] as? String
        _status?.textColor=UIColor(red: CGFloat(255) / 255.0, green: CGFloat(215) / 255.0, blue: CGFloat(0) / 255.0, alpha: CGFloat(1))
        self.addSubview(_status!)
        
        var _bonus:UILabel?=UILabel(frame: CGRectMake(20+_log!.frame.width+_type!.frame.width+_status!.frame.width, 0, 80, 44))
        _bonus?.font=UIFont(name: "Arial",size: 20)
        _bonus?.text=info["_bonus"] as? String
        _bonus?.textColor=UIColor(red: CGFloat(255) / 255.0, green: CGFloat(0) / 255.0, blue: CGFloat(0) / 255.0, alpha: CGFloat(1))
        self.addSubview(_bonus!)
        
        var _productName:UILabel?=UILabel(frame: CGRectMake(5+_log!.frame.width+_type!.frame.width+_status!.frame.width+_bonus!.frame.width, 0, Width-(20+_log!.frame.width+_type!.frame.width+_status!.frame.width+_bonus!.frame.width), 44))
        _productName?.font=UIFont(name: "Arial",size: 20)
        _productName?.text=info["_productName"] as? String
        _productName?.textColor=UIColor(red: CGFloat(255) / 255.0, green: CGFloat(215) / 255.0, blue: CGFloat(0) / 255.0, alpha: CGFloat(1))
        _productName?.textAlignment = .Right
        self.addSubview(_productName!)
        
        //second line...
        var _promotionName:UILabel?=UILabel(frame: CGRectMake((_type?.frame.origin.x)!, 44, 120, 44))
        _promotionName?.font=UIFont(name: "Arial",size: 16)
        _promotionName?.text=info["_promotionName"] as? String
        _promotionName?.textColor=UIColor(red: CGFloat(255) / 255.0, green: CGFloat(215) / 255.0, blue: CGFloat(0) / 255.0, alpha: CGFloat(1))
        self.addSubview(_promotionName!)
        
        var _requireMoney:UILabel?=UILabel(frame: CGRectMake((_productName?.frame.origin.x)!+(_productName?.frame.width)!-200, 44, 200, 44))
        _requireMoney?.font=UIFont(name: "Arial",size: 16)
        _requireMoney?.textAlignment = .Right
        _requireMoney?.text="起投金额: "+(info["_requireMoney"] as? String)!
        _requireMoney?.textColor=UIColor(red: CGFloat(255) / 255.0, green: CGFloat(0) / 255.0, blue: CGFloat(0) / 255.0, alpha: CGFloat(1))
        self.addSubview(_requireMoney!)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
