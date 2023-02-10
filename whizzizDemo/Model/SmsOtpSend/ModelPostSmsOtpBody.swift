import Foundation

struct ModelPostSmsOtpBody:Codable{
    
    let message = "Doğrulama kodunuz ${code}."
    let recipients:String?
    let header = 100077
    let type = "sms"
    let encode = "numeric"
    let timeout = 60
    let length = 6
    
    init(recipients: String?) {
        self.recipients = recipients
    }
    
}
