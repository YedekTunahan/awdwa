import Foundation


class PostSmsOtpVerificationService {

    func smsOtpVerificationSend(request:URLRequest,completion: @escaping (ModelPostSmsOtpVerificationResponse?) -> ()) {
        
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let error = error {
                
                print(error.localizedDescription)
                completion(nil)
            }
            guard let data = data else {return}
                 do{
                     let response = try JSONDecoder().decode(ModelPostSmsOtpVerificationResponse.self, from: data)
                     completion(response)
                 }catch let jsonErr{
                     print(jsonErr)
                }
            
        }
        task.resume()

    }
    
}








