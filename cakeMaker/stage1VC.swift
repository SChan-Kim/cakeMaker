import UIKit

class stage1VC: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "1TO2" {
            let vc = segue.destination as? stage2VC
            vc?.modalPresentationStyle = .fullScreen

        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func to2btn(_ sender: Any) {
        performSegue(withIdentifier: "1TO2", sender: to2btn.self)
    }
}
