import UIKit
import AVFoundation
import AudioKit

class ViewController: UIViewController {

    var pianoSoundC3 = try! AKAudioFile(readFileName: "sound/C3.mp3", baseDir: .resources)
    lazy var audioPlayerC3 = try! AKAudioPlayer(file: pianoSoundC3)
    
    var pianoSoundCS = try! AKAudioFile(readFileName: "sound/C#.mp3", baseDir: .resources)
    lazy var audioPlayerCS = try! AKAudioPlayer(file: pianoSoundCS)
    
    var pianoSoundD = try! AKAudioFile(readFileName: "sound/D.mp3", baseDir: .resources)
    lazy var audioPlayerD = try! AKAudioPlayer(file: pianoSoundD)
    
    var pianoSoundDS = try! AKAudioFile(readFileName: "sound/D#.mp3", baseDir: .resources)
    lazy var audioPlayerDS = try! AKAudioPlayer(file: pianoSoundDS)
    
    var pianoSoundE = try! AKAudioFile(readFileName: "sound/E.mp3", baseDir: .resources)
    lazy var audioPlayerE = try! AKAudioPlayer(file: pianoSoundE)
    
    var pianoSoundF = try! AKAudioFile(readFileName: "sound/F.mp3", baseDir: .resources)
    lazy var audioPlayerF = try! AKAudioPlayer(file: pianoSoundF)
    
    var pianoSoundFS = try! AKAudioFile(readFileName: "sound/F#.mp3", baseDir: .resources)
    lazy var audioPlayerFS = try! AKAudioPlayer(file: pianoSoundFS)
    
    var pianoSoundG = try! AKAudioFile(readFileName: "sound/G.mp3", baseDir: .resources)
    lazy var audioPlayerG = try! AKAudioPlayer(file: pianoSoundG)
    
    var pianoSoundGS = try! AKAudioFile(readFileName: "sound/G#.mp3", baseDir: .resources)
    lazy var audioPlayerGS = try! AKAudioPlayer(file: pianoSoundGS)
    
    var pianoSoundA = try! AKAudioFile(readFileName: "sound/A.mp3", baseDir: .resources)
    lazy var audioPlayerA = try! AKAudioPlayer(file: pianoSoundA)
    
    var pianoSoundAS = try! AKAudioFile(readFileName: "sound/A#.mp3", baseDir: .resources)
    lazy var audioPlayerAS = try! AKAudioPlayer(file: pianoSoundAS)
    
    var pianoSoundB = try! AKAudioFile(readFileName: "sound/B.mp3", baseDir: .resources)
    lazy var audioPlayerB = try! AKAudioPlayer(file: pianoSoundB)
    
    var pianoSoundC4 = try! AKAudioFile(readFileName: "sound/C4.mp3", baseDir: .resources)
    lazy var audioPlayerC4 = try! AKAudioPlayer(file: pianoSoundC4)
    
    override func viewDidLoad() {
        audioPlayerC3.looping = true
        audioPlayerCS.looping = true
        audioPlayerD.looping = true
        audioPlayerDS.looping = true
        audioPlayerE.looping = true
        audioPlayerF.looping = true
        audioPlayerFS.looping = true
        audioPlayerG.looping = true
        audioPlayerGS.looping = true
        audioPlayerA.looping = true
        audioPlayerAS.looping = true
        audioPlayerB.looping = true
        audioPlayerC4.looping = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func C3(sender: UIButton) {
        do {
            let bitcrusher = AKBitCrusher(audioPlayerC3)
            bitcrusher.bitDepth = 16
            bitcrusher.sampleRate = 40000
            try AudioKit.stop()
            AudioKit.output = bitcrusher
            try AudioKit.start()
            
            audioPlayerC3.play()
        } catch {
            print(error)
        }
    }
    
    @IBAction func CS(sender: UIButton) {
        do {
            let bitcrusher = AKBitCrusher(audioPlayerCS)
            bitcrusher.bitDepth = 32
            bitcrusher.sampleRate = 100000
            try AudioKit.stop()
            AudioKit.output = bitcrusher
            try AudioKit.start()
            
            audioPlayerCS.play()
        } catch {
            print(error)
        }
    }
    
    @IBAction func D(sender: UIButton) {
        do {
            let delay = AKDelay(audioPlayerD)
            delay.time = 0.1
            delay.dryWetMix = 1
            let leftPan = AKPanner(audioPlayerD, pan: -1)
            let rightPan = AKPanner(delay, pan: 1)
            let mix = AKMixer(leftPan, rightPan)
            try AudioKit.stop()
            AudioKit.output = mix
            try AudioKit.start()
            
            audioPlayerD.play()
        } catch {
            print(error)
        }
    }
    
    @IBAction func DS(sender: UIButton) {
        do {
            try AudioKit.stop()
            AudioKit.output = audioPlayerDS
            try AudioKit.start()
            
            audioPlayerDS.play()
        } catch {
            print(error)
        }
    }
    
    @IBAction func E(sender: UIButton) {
        do {
            try AudioKit.stop()
            AudioKit.output = audioPlayerE
            try AudioKit.start()
            
            audioPlayerE.play()
        } catch {
            print(error)
        }
    }
    
    @IBAction func F(sender: UIButton) {
        do {
            try AudioKit.stop()
            AudioKit.output = audioPlayerF
            try AudioKit.start()
            
            audioPlayerF.play()
        } catch {
            print(error)
        }
    }
    
    @IBAction func FS(sender: UIButton) {
        do {
            try AudioKit.stop()
            AudioKit.output = audioPlayerFS
            try AudioKit.start()
            
            audioPlayerFS.play()
        } catch {
            print(error)
        }
    }
    
    @IBAction func G(sender: UIButton) {
        do {
            try AudioKit.stop()
            AudioKit.output = audioPlayerG
            try AudioKit.start()
            
            audioPlayerG.play()
        } catch {
            print(error)
        }
    }
    
    @IBAction func GS(sender: UIButton) {
        do {
            try AudioKit.stop()
            AudioKit.output = audioPlayerGS
            try AudioKit.start()
            
            audioPlayerGS.play()
        } catch {
            print(error)
        }
    }
    
    @IBAction func A(sender: UIButton) {
        do {
            try AudioKit.stop()
            AudioKit.output = audioPlayerA
            try AudioKit.start()
            
            audioPlayerA.play()
        } catch {
            print(error)
        }
    }
    
    @IBAction func AS(sender: UIButton) {
        do {
            try AudioKit.stop()
            AudioKit.output = audioPlayerAS
            try AudioKit.start()
            
            audioPlayerAS.play()
        } catch {
            print(error)
        }
    }
    
    @IBAction func B(sender: UIButton) {
        do {
            try AudioKit.stop()
            AudioKit.output = audioPlayerB
            try AudioKit.start()
            
            audioPlayerB.play()
        } catch {
            print(error)
        }
    }
    
    @IBAction func C4(sender: UIButton) {
        do {
            try AudioKit.stop()
            AudioKit.output = audioPlayerC4
            try AudioKit.start()
            
            audioPlayerC4.play()
        } catch {
            print(error)
        }
    }
    
}
