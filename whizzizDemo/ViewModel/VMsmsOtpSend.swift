
import Foundation

struct SmsOtpSendAll {
    
    let responseAll : ModelPostSmsOtpResponse
    
    func takeResult() -> SmsOtpSend{
        return SmsOtpSend(response: responseAll)
    }
    
}


struct SmsOtpSend{
    
    let response:ModelPostSmsOtpResponse
    
    var result:Bool {
        return self.response.result!
    }
    
    var data:Int {
        return self.response.data!
    }
}




























/*
 class PostData{
     
     var userInformation:UserInformation?
     var data:String?

     func postDataGet(){
         
         if let userInformation = userInformation?.phoneNumber{
             
             var request = requestSmsOtpSend(phoneNumber: userInformation)
             PostSmsOtpService().smsOtpSend(request: request) { response in
                 
                 if let response = response{
                     self.data = String(response.data!)
                     print("gelen ID cevabı:\(self.data)")
                     
                 }
             }
         }

     }
     
 }
 */

