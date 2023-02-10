import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var surnameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var verificationBtnClick: UIButton!
    @IBOutlet weak var checkBtn: UIButton!
    var userInformation:UserInformation?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonFeature(imageName: "VerificationG", button: self.verificationBtnClick, enable: false)
    }
  
  
    
    //MARK: TextfieldDidChange
    @IBAction func textFieldBtnClick(_ sender: UITextField) {
       
        if sender.text!.isEmpty != nil && sender.text!.count >= 11 {
            buttonFeature(imageName: "Verification", button: self.verificationBtnClick, enable: true)
            
        }else{
            buttonFeature(imageName: "VerificationG", button: self.verificationBtnClick, enable: false)
        }
    }
    
    
    @IBAction func checkBtnClick(_ sender: Any) {
        checkButtonFeature()
    }
    
    @IBAction func VerificationBtnClick(_ sender: Any) {
        userInformation = UserInformation(name: nameTextField.text!, surName: surnameTextField.text!, email: emailTextField.text!, phoneNumber: phoneNumberTextField.text!)
        if nameTextField.text != "" && surnameTextField.text != "" && phoneNumberTextField.text != "" || emailTextField.text != ""{
            
            DispatchQueue.main.async {
                self.performSegue(withIdentifier: "VerificationVC", sender: self.userInformation)
            }
            
        }else {
            makeAlert(title: "Error", msg: "Gerekli alanları doldurunuz...")
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "VerificationVC"{
            if let data = sender as? UserInformation {
                
                let destinationVC = segue.destination as! VerificationViewController 
                destinationVC.userInformation  = data
                
            }
        }
        
    }
    

}
