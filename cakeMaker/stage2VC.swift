import UIKit

class stage2VC: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "2TO3" {
            let vc = segue.destination as? stage3VC
            vc?.modalPresentationStyle = .fullScreen

        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func to3btn(_ sender: Any) {
        performSegue(withIdentifier: "2TO3", sender: to3btn.self)
    }
    
}
