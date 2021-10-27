//
//  ViewController2.swift
//  ASMDRevTableView
//
//  Created by Mac on 14/09/21.
//

import UIKit
//MARK : ViewController2Protocol Declaration
protocol ViewController2Protocol:class {
    func passData(result: Int?)
}
//MARK:ViewController2
class ViewController2: UIViewController {
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2 : UITextField!
    var number1FromVC1 : String?
    var number2FromVC1: String?
    weak var delegate : ViewController2Protocol?
    //MARK: viewDidLoad()
    override func viewDidLoad() {
        super.viewDidLoad()
        textField1.text = number1FromVC1
        textField2.text = number2FromVC1
        title = "Second Viewcontroller"
    }
    //MARK:additionAction()
    @IBAction func additionAction() {
        guard let s1 = Int(textField1.text!) else{
            return
        }
        guard let s2 = Int(textField2.text!) else{
            return
        }
        let addition = s1 + s2
        delegate?.passData(result: addition)
        navigationController?.popViewController(animated: true)
       }
    //MARK:substractionAction()
    @IBAction func substractionAction(_ sender: Any) {
        guard let s1 = Int(textField1.text!) else {
            return
        }
        guard let s2 = Int(textField2.text!) else {
            return
        }
        let substraction = s1 - s2
        delegate?.passData(result: substraction)
        navigationController?.popViewController(animated: true)
    }
    //MARK:multiplicationAction()
    @IBAction func multiplicationAction(_ sender: Any) {
        guard let s1 = Int(textField1.text!) else {
            return
        }
        guard let s2 = Int(textField2.text!) else {
            return
        }
        let multiplication = s1 * s2
        delegate?.passData(result: multiplication)
        navigationController?.popViewController(animated: true)
    }
    //MARK:divisionAction()
    @IBAction func divisionAction(_ sender: Any) {
        guard let s1 = Int(textField1.text!) else {
            return
        }
        guard let s2 = Int(textField2.text!) else {
            return
        }
        let division = s1 / s2
        delegate?.passData(result: division)
        navigationController?.popViewController(animated: true)
    }
    @IBAction func NEXTToVC3() {
        let VC3bj = self.storyboard?.instantiateViewController(identifier: "ViewController3") as! ViewController3
        self.navigationController?.pushViewController(VC3bj, animated: true)
    }
}

