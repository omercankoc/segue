import UIKit

class ViewController: UIViewController {

    var username : String? = nil
    
    @IBOutlet weak var labelFirstView: UILabel!
    @IBOutlet weak var textUsername: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func next(_ sender: Any) {
        
        if(textUsername.text != ""){
            username = textUsername.text
            performSegue(withIdentifier: "segueNext", sender: nil)
        }
        
    }
    
    // TR : Segue gerceklesmeden hemen onceki kontrol ve atamalari gerceklestir.
    // EN : Perform checks and assignments immediately before the Segue takes place.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // as : casting
        if segue.identifier == "segueNext"{
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.message = username
        }
    }
}

