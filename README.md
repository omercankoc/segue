# Segue

A segue defines a transition between two view controllers in your app’s storyboard file. The starting point of a segue is the button, table row, or gesture recognizer that initiates the segue. The end point of a segue is the view controller you want to display. A segue always presents a new view controller, but you can also use an unwind segue to dismiss a view controller.

You do not need to trigger segues programmatically. At runtime, UIKit loads the segues associated with a view controller and connects them to the corresponding elements. When the user interacts with the element, UIKit loads the appropriate view controller, notifies your app that the segue is about to occur, and executes the transition. You can use the notifications sent by UIKit to pass data to the new view controller or prevent the segue from happening altogether.

### After the navigation settings are made, define the relevant flow.
```swift
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
```

### Perform checks and assignments immediately before the Segue takes place.
```swift
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    // as : casting
    if segue.identifier == "segueNext"{
        let destinationVC = segue.destination as! SecondViewController
        destinationVC.message = username
    }
}
```
