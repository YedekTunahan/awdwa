
import UIKit

class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.setHidesBackButton(true, animated: true)
    }

    @IBAction func WhizzizSignUpBtnClilck(_ sender: Any) {
        performSegue(withIdentifier: "SignUpVC", sender: nil)
    }
    
    
}

