import UIKit

class ViewController: UIViewController {

    var username : String? = nil
    var password : String? = nil
    
    @IBOutlet weak var textUsername: UITextField!
    @IBOutlet weak var textPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func next(_ sender: Any) {
        if(textUsername.text != ""){
            username = textUsername.text
            performSegue(withIdentifier: "segueNext", sender: nil)
        } else {
            let alert = UIAlertController(title: "Empty!", message: "Can't be empty!", preferredStyle: UIAlertController.Style.alert)
            let ok = UIAlertAction(title: "Ok", style:UIAlertAction.Style.destructive) { (UIAlertAction) in
                print("OK")
            }
            alert.addAction(ok)
            self.present(alert, animated: true, completion: nil)
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
