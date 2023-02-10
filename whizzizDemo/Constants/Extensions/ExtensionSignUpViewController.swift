
import Foundation
import UIKit

extension SignUpViewController {
    func makeAlert(title:String,msg:String){
        let alert = UIAlertController(title: title, message: msg, preferredStyle:UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style:UIAlertAction.Style.default)
        alert.addAction(okButton)
        present(alert, animated: true, completion: nil)
    }
 
}


extension SignUpViewController {
    
    func checkButtonFeature(){
        if counterCheck == 0 {
            checkBtn.setImage(UIImage(systemName: "checkmark.square.fill"), for: .normal)
            
            counterCheck = 1
        }else{
            checkBtn.setImage(UIImage(systemName: "stop"), for: .normal)
           
            counterCheck = 0
        }

    }
}
