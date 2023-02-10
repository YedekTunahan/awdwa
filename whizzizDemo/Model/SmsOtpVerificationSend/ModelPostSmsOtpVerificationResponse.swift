

import Foundation

struct ModelPostSmsOtpVerificationResponse:Codable{
        let result: Bool?
        let error: Error?
}

struct Error: Codable {
    let code: Int
    let message: String
}
