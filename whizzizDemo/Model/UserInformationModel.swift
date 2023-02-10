
import Foundation

struct UserInformation {
    
    var name:String?
    var surName:String?
    var email:String?
    var phoneNumber:String?
    
    init(){
        
    }
    init(name:String,surName:String,email:String,phoneNumber:String){
       
        self.name = name
        self.surName = surName
        self.email = email
        self.phoneNumber = phoneNumber
       
        
    }
}
