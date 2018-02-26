
import UIKit
import MediaPlayer
import AVFoundation


class ButtonScreen: UIViewController {

    @IBOutlet weak var ButtonEmilio: UIButton!
    
    @IBOutlet weak var ButtonChato: UIButton!
    
    @IBOutlet weak var ButtonPaco: UIButton!
    
    @IBOutlet weak var ButtonPablo: UIButton!
    
    @IBOutlet weak var ButtonGiancarlo: UIButton!
    
    @IBOutlet weak var ButtonCarlos: UIButton!
    
    var player: AVAudioPlayer!
    
    
    @IBAction func ButtonPressed(_ sender: UIButton) {
        player.play()
    }
    
    
    
    @IBAction func StopButtonTapped(_ sender: Any) {
        player.stop()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "BBQ", ofType: "mp3")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
        
        ButtonEmilio.layer.cornerRadius = 100
        ButtonEmilio.clipsToBounds = true
        
        
        
        
    }
    
 
    
    
    
    
}
