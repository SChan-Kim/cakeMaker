import UIKit

class mainVC: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "startBaking" {
            let vc = segue.destination as? stage1VC
            vc?.modalPresentationStyle = .fullScreen
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func startBtn(_ sender: Any) {
        performSegue(withIdentifier: "startBaking", sender: startBtn.self)
    }
    
}

