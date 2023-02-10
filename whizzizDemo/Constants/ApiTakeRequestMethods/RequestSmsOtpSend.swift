import Foundation

//METHODS
func requestSmsOtpSend (phoneNumber:String) -> URLRequest{
    let url = postSmsOtpUrl
    let headers = headers
    guard let requestUrl = url else { fatalError() }

    var request = URLRequest(url: requestUrl)
    request.httpMethod = "POST"
    request.allHTTPHeaderFields = headers
    
    // Gönderidelecek parametremiz bu message ve headers default olarak tanımlandığı için onlara bir deger ataması yapmıyoruz.
    let smsOtp = ModelPostSmsOtpBody(recipients: phoneNumber)
    do{
        let jsonData = try? JSONEncoder().encode(smsOtp)

        request.httpBody = jsonData
        
       
    }catch{
        print("Error request")
    }

    return request
}
