

import Foundation

//METHODS

func requestSmsOtpVerificationSend (id:Int,code:String) -> URLRequest{
    let url = postSmsOtpVerificationUrl
    let headers = headers
    guard let requestUrl = url else { fatalError() }

    var request = URLRequest(url: requestUrl)
    request.httpMethod = "POST"
    request.allHTTPHeaderFields = headers

    // Gönderidelecek parametremiz bu message ve headers default olarak tanımlandığı için onlara bir deger ataması yapmıyoruz.
    let smsOtpVerification = ModelPostSmsOtpVerificationBody(id: id,code: code)
    //let dataID = 
    do{
        let jsonData = try? JSONEncoder().encode(smsOtpVerification)

        request.httpBody = jsonData
        
       
    }catch{
        print("Error request")
    }

    return request
}
