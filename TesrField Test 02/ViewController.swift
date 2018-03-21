
import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //delegate 연결
     myTextField.delegate = self
    }

    @IBAction func buttonPressed(_ sender: Any) {
        myLabel.text = myTextField.text
        myTextField.text = ""
        myTextField.resignFirstResponder()
    }
    
    // UItextFiledDelegate method
    // called when 'return' key pressed. return NO to ignore.
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("I pressed return Key")
        // 키패드를 내림
        myTextField.resignFirstResponder()
        return true
    }
}

