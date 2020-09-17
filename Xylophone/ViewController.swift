import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(buttonType: sender.currentTitle!);
        sender.alpha = 0.5;
    }
    
    func playSound(buttonType: String) {
        let url = Bundle.main.url(forResource: buttonType, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}
