
import Foundation
import UIKit

func buttonFeature(imageName:String,button:UIButton,enable:Bool,title:String="") {
    button.isEnabled = enable
    button.setTitle(title, for: .normal)
    let image = UIImage(named:imageName)
    DispatchQueue.main.async {
        button.setImage(image?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal), for: .normal)
    }
    
}
