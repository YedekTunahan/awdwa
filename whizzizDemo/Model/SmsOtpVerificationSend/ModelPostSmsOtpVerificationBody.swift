

import Foundation


struct ModelPostSmsOtpVerificationBody:Codable{
  
    let id:Int?
    let code:String?
    
    init(id: Int?, code: String?) {
        self.id = id
        self.code = code
    }
    
}
