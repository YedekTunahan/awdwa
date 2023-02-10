import Foundation

class PostSmsOtpService{
    
    
    // exzcaping e PostSmsOtpModel da koyabiliriz.  
    func smsOtpSend(request:URLRequest,completion:@escaping (ModelPostSmsOtpResponse?) -> ()) {
        
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let error = error {
                
                print(error.localizedDescription)
                completion(nil)
                
            }
            guard let data = data else {return}
                 do{
                     let response = try JSONDecoder().decode(ModelPostSmsOtpResponse.self, from: data)
                     print(response)
                     completion(response)
                 }catch let jsonErr{
                     print(jsonErr)
                }
            
        }
        task.resume()

    }
    
}
