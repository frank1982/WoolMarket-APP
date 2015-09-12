

import UIKit

class GoodDetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var label:UILabel=UILabel(frame:CGRectMake(10, 200, 100, 100))
        label.text="this is detail"
        self.view.backgroundColor=UIColor.whiteColor()
        self.view.addSubview(label)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
