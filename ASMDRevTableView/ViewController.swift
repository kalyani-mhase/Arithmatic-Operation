
import UIKit
class ViewController: UIViewController {
    
    @IBOutlet weak var numberText1: UITextField!
    @IBOutlet weak var numberText2: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "First Viewcontroller"
    }
    //NEXT()
    @IBAction func NEXT(){
        var number1 = numberText1.text
        var number2 = numberText2.text
        if number1?.isEmpty == false && number2?.isEmpty == false{
        if let vc2 = storyboard?.instantiateViewController(identifier: "ViewController2") as?
            ViewController2{
        vc2.delegate = self
        vc2.number1FromVC1 = number1
        vc2.number2FromVC1 = number2
        self.navigationController?.pushViewController(vc2, animated: true)
        }
        }
    }
    
}
//MARK: ViewController2Protocol
    extension ViewController :ViewController2Protocol{
        func passData(result: Int?) {
        self.resultLabel.text = String(result ?? 11)
    }
        
    }




