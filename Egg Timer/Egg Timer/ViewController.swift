//
//  ViewController.swift
//  Egg Timer
//
//  Created by Muhamed Alkhatib on 21/08/2020.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var eggImageView: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var progressView: UIProgressView!
    var counter:Int = 3*60
    var seconds:Int = 3*60
    var timer :Timer?
    override func viewDidLoad() {
        super.viewDidLoad()
        resetProgress()
        // Do any additional setup after loading the view.
    }

    @IBAction func playButtonPressed(_ sender: UIButton) {
        timer?.invalidate()
        resetProgress()
        resetResultLabel()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateProgress), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func segmentControlChanged(_ sender: UISegmentedControl) {
        if timer != nil {
            timer?.invalidate()
        }
        switch sender.selectedSegmentIndex{
        case 0:
            eggImageView.image = UIImage(named: "Soft")
            counter = 3*60
            seconds = counter
        case 1:
            eggImageView.image = UIImage(named: "Medium")
            counter = 5*60
            seconds = counter
        case 2:
            eggImageView.image = UIImage(named: "hard")
            counter = 8*60
            seconds = counter
        default:
            print("Image Error")
        }
        resetProgress()
        resetResultLabel()
    }
    
    func resetProgress(){
        progressView.progress = 0.0
    }
    func resetResultLabel(){
        resultLabel.text = ""
    }
    
    @objc func updateProgress(){
        if(counter > 0){
            counter -= 1
            progressView.progress = 1.0 - Float(counter)/Float(seconds)
        }else{
            timer?.invalidate()
            resultLabel.text = "Time is over"
        }
    }
}

