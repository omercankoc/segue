import UIKit

class SecondViewController: UIViewController {

    var message : String? = nil
    
    @IBOutlet weak var labelMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if(message != nil){
            labelMessage.text = "Hello " + message!
        } else {
            labelMessage.text = "Hello Guest!"
        }
    }
}
