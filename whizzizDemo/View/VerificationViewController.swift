

import UIKit

class VerificationViewController: UIViewController {
    
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var verificationTextField: UITextField!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var verificationBtnClick: UIButton!
    @IBOutlet weak var sendAgainBtnClick: UIButton!
    //SegueVariable
    var userInformation:UserInformation?
    //API
     var smsOtpSendAll:SmsOtpSendAll!
    
    
    
    //MARK:-----
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counter = 1
        buttonDisable()
        postData()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        myTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timeRun) , userInfo: nil, repeats: true)
    }
    
    
    //MARK: TextFieldDidChange
    @IBAction func textFieldBtnClick(_ sender: UITextField) {
        if sender.text!.isEmpty {
            buttonFeature(imageName: "VerificationG", button: self.verificationBtnClick, enable: false)
        }else{
            buttonFeature(imageName: "Verification", button: self.verificationBtnClick, enable: true)
            request = requestSmsOtpVerificationSend(id:data!, code:sender.text!)
        }
    }
    
    
    @IBAction func sendAgainBtnClick(_ sender: Any) {
        counter += 1
        counterTime = -1
        if counter < 4 {
                
            postData()
        }else {
            // Sayaç koyacağız 3 dk geçtikten sonra SMS gelecek...
            buttonDisable()
            myTimer.invalidate()
            counterTime = 0
            timeLabel.text = "Kodun Süresi Dolacak: \(counterTime)"
            self.makeAlert2(title: "Daha Sonra Tekrar Deneyiniz", msg: "Çok fazla deneme yapıldı tekrar denemek için 3 dk bekleyiniz...")
            
            
        }
        
    }
    
    @IBAction func verificationOtpBtnClick(_ sender: Any) {
   
         postOtpVerification()
         counterTime = 0
        }
    
    @objc func timeRun(){
        counterTime += 1
        timeLabel.text = "Kodun Süresi Dolacak: \(counterTime)"
        if counterTime == 61 {
            stopWatchStop(myTimer: myTimer, counterTime: counterTime, timeLabel: timeLabel)
            buttonFeature(imageName: "sendAgain", button: self.sendAgainBtnClick, enable: true,title: "Kod Ulaşmadı Tekrar Yolla")
        }
        
    }
    
    @objc func timeRun2(){
        counterTime += 1
        timeLabel.text = "Kodun Süresi Dolacak: \(counterTime)"
        
        if counterTime == 180 {
            buttonFeature(imageName: "sendAgain", button: self.sendAgainBtnClick, enable: true,title: "Kod Ulaşmadı Tekrar Yolla")
            stopWatchStop(myTimer: myTimer, counterTime: counterTime, timeLabel: timeLabel)
        }
        
    }
}
