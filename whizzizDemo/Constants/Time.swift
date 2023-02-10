

import Foundation
import UIKit

var myTimer = Timer()

func stopWatchStop(myTimer:Timer,counterTime:Int,timeLabel:UILabel){
    myTimer.invalidate()
    var counterTime = 0
    timeLabel.text = "Kodun Süresi Dolacak: \(counterTime)"
}
