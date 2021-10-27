
import UIKit
class ViewController3: UIViewController {
    @IBOutlet weak var numberText: UITextField!
    @IBOutlet weak var squareText: UITextField!
    @IBOutlet weak var cubeText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Third Viewcontroller"
        squareText.delegate = self
        cubeText.delegate = self
    }
    //MARK:square()
    @IBAction func square(_ sender: Any) {
        guard let s1 = Int(numberText.text!) else {
            return
        }
        let square = s1*s1
        squareText.text = String(square)
    }
    //MARK:cubeAction()
    @IBAction func cubeAction(_ sender: Any) {
        guard let c1 = Int(numberText.text!) else {
            return
        }
        let cube = c1*c1*c1
        cubeText.text = String(cube)
    }
    @IBAction func BACK(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
extension ViewController3: UITextFieldDelegate{
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        false
    }
}
