import UIKit

class AntimageVC: UIViewController {
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var midView: UIView!
    @IBOutlet weak var bottomView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topView.layer.shadowColor = UIColor.purple.cgColor
        topView.layer.shadowOpacity = 1
        topView.layer.shadowOffset = .zero
        topView.layer.shadowRadius = 10
        
        midView.layer.shadowColor = UIColor.purple.cgColor
        midView.layer.shadowOpacity = 1
        midView.layer.shadowOffset = .zero
        midView.layer.shadowRadius = 10
        
        bottomView.layer.shadowColor = UIColor.purple.cgColor
        bottomView.layer.shadowOpacity = 1
        bottomView.layer.shadowOffset = .zero
        bottomView.layer.shadowRadius = 10
    }
}
