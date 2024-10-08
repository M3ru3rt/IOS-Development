import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var diceImageView1: UIImageView!
    
    let diceImages = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        diceImageView1.image = UIImage(named: "dice1")
        diceImageView2.image = UIImage(named: "dice1")
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        rollDice()
    }
    func rollDice() {
            let randomIndex1 = Int(arc4random_uniform(6))
            let randomIndex2 = Int(arc4random_uniform(6))
            

            diceImageView1.image = UIImage(named: diceImages[randomIndex1])
            diceImageView2.image = UIImage(named: diceImages[randomIndex2])
        }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
            if motion == .motionShake {
                rollDice()
            }
        }
        
}
