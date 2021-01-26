import UIKit

class stage3VC: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "3TO4" {
            let vc = segue.destination as? stage4VC
            vc?.modalPresentationStyle = .fullScreen
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func to4btn(_ sender: Any) {
        performSegue(withIdentifier: "3TO4", sender: to4btn.self)
    }
}
