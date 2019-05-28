import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var pianoSoundC3 = Bundle.main.url(forResource: "sound/C3", withExtension: "mp3")
    var audioPlayerC3 = AVAudioPlayer()
    
    var pianoSoundCS = URL(fileURLWithPath: Bundle.main.path(forResource: "sound/C#", ofType: "mp3") ?? "C3")
    var audioPlayerCS = AVAudioPlayer()
    
    var pianoSoundD = URL(fileURLWithPath: Bundle.main.path(forResource: "sound/D", ofType: "mp3") ?? "C3")
    var audioPlayerD = AVAudioPlayer()
    
    var pianoSoundDS = URL(fileURLWithPath: Bundle.main.path(forResource: "sound/D#", ofType: "mp3") ?? "C3")
    var audioPlayerDS = AVAudioPlayer()
    
    var pianoSoundE = URL(fileURLWithPath: Bundle.main.path(forResource: "sound/E", ofType: "mp3") ?? "C3")
    var audioPlayerE = AVAudioPlayer()
    
    var pianoSoundF = URL(fileURLWithPath: Bundle.main.path(forResource: "sound/F", ofType: "mp3") ?? "C3")
    var audioPlayerF = AVAudioPlayer()
    
    var pianoSoundFS = URL(fileURLWithPath: Bundle.main.path(forResource: "sound/F#", ofType: "mp3") ?? "C3")
    var audioPlayerFS = AVAudioPlayer()
    
    var pianoSoundG = URL(fileURLWithPath: Bundle.main.path(forResource: "sound/G", ofType: "mp3") ?? "C3")
    var audioPlayerG = AVAudioPlayer()
    
    var pianoSoundGS = URL(fileURLWithPath: Bundle.main.path(forResource: "sound/G#", ofType: "mp3") ?? "C3")
    var audioPlayerGS = AVAudioPlayer()
    
    var pianoSoundA = URL(fileURLWithPath: Bundle.main.path(forResource: "sound/A", ofType: "mp3") ?? "C3")
    var audioPlayerA = AVAudioPlayer()
    
    var pianoSoundAS = URL(fileURLWithPath: Bundle.main.path(forResource: "sound/A#", ofType: "mp3") ?? "C3")
    var audioPlayerAS = AVAudioPlayer()
    
    var pianoSoundB = URL(fileURLWithPath: Bundle.main.path(forResource: "sound/B", ofType: "mp3") ?? "C3")
    var audioPlayerB = AVAudioPlayer()
    
    var pianoSoundC4 = URL(fileURLWithPath: Bundle.main.path(forResource: "sound/C4", ofType: "mp3") ?? "C3")
    var audioPlayerC4 = AVAudioPlayer()
    
    override func viewDidLoad() {
        do {
            try audioPlayerC3 = AVAudioPlayer(contentsOf: pianoSoundC3!, fileTypeHint: AVFileType.mp3.rawValue)
            audioPlayerC3.prepareToPlay()
            
            try audioPlayerCS = AVAudioPlayer(contentsOf: pianoSoundCS)
            audioPlayerCS.prepareToPlay()
            
            try audioPlayerD = AVAudioPlayer(contentsOf: pianoSoundD)
            audioPlayerD.prepareToPlay()
            
            try audioPlayerDS = AVAudioPlayer(contentsOf: pianoSoundDS)
            audioPlayerDS.prepareToPlay()
            
            try audioPlayerE = AVAudioPlayer(contentsOf: pianoSoundE)
            audioPlayerE.prepareToPlay()
            
            try audioPlayerF = AVAudioPlayer(contentsOf: pianoSoundF)
            audioPlayerF.prepareToPlay()
            
            try audioPlayerFS = AVAudioPlayer(contentsOf: pianoSoundFS)
            audioPlayerFS.prepareToPlay()
            
            try audioPlayerG = AVAudioPlayer(contentsOf: pianoSoundG)
            audioPlayerG.prepareToPlay()
            
            try audioPlayerGS = AVAudioPlayer(contentsOf: pianoSoundGS)
            audioPlayerGS.prepareToPlay()
            
            try audioPlayerA = AVAudioPlayer(contentsOf: pianoSoundA)
            audioPlayerA.prepareToPlay()
            
            try audioPlayerAS = AVAudioPlayer(contentsOf: pianoSoundAS)
            audioPlayerAS.prepareToPlay()
            
            try audioPlayerB = AVAudioPlayer(contentsOf: pianoSoundB)
            audioPlayerB.prepareToPlay()
            
            try audioPlayerC4 = AVAudioPlayer(contentsOf: pianoSoundC4)
            audioPlayerC4.prepareToPlay()
        } catch {
            print("error!", error)
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func C3(sender: UIButton) {
        audioPlayerC3.currentTime = 0
        audioPlayerC3.play()
    }
    
    @IBAction func CS(sender: UIButton) {
        audioPlayerCS.currentTime = 0
        audioPlayerCS.play()
    }
    
    @IBAction func D(sender: UIButton) {
        audioPlayerD.currentTime = 0
        audioPlayerD.play()
    }
    
    @IBAction func DS(sender: UIButton) {
        audioPlayerDS.currentTime = 0
        audioPlayerDS.play()
    }
    
    @IBAction func E(sender: UIButton) {
        audioPlayerE.currentTime = 0
        audioPlayerE.play()
    }
    
    @IBAction func F(sender: UIButton) {
        audioPlayerF.currentTime = 0
        audioPlayerF.play()
    }
    
    @IBAction func FS(sender: UIButton) {
        audioPlayerFS.currentTime = 0
        audioPlayerFS.play()
    }
    
    @IBAction func G(sender: UIButton) {
        audioPlayerG.currentTime = 0
        audioPlayerG.play()
    }
    
    @IBAction func GS(sender: UIButton) {
        audioPlayerGS.currentTime = 0
        audioPlayerGS.play()
    }
    
    @IBAction func A(sender: UIButton) {
        audioPlayerA.currentTime = 0
        audioPlayerA.play()
    }
    
    @IBAction func AS(sender: UIButton) {
        audioPlayerAS.currentTime = 0
        audioPlayerAS.play()
    }
    
    @IBAction func B(sender: UIButton) {
        audioPlayerB.currentTime = 0
        audioPlayerB.play()
    }
    
    @IBAction func C4(sender: UIButton) {
        audioPlayerC4.currentTime = 0
        audioPlayerC4.play()
    }
    
}
