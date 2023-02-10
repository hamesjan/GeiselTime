//
//  ViewController.swift
//  GeiselTime
//
//  Created by James Jongyoon Han on 2/8/23.
//
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var endButton: UIButton!

    var timer = Timer()
    var time = 0
    var pressed = false


    @IBAction func startButtonPressed(_ sender: Any) {
//        startButton.isHidden = true
//        endButton.isHidden = false
        if pressed == false
        {
            pressed = true
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.updateTimer), userInfo: nil, repeats: true)
            RunLoop.current.add(timer, forMode: .common)
        }
    }

    @IBAction func endButtonPressed(_ sender: Any) {
        pressed = false
        timer.invalidate()

//        startButton.isHidden = false
//        endButton.isHidden = true
    }

    @objc func updateTimer() {
        time += 1
        let format = secToHourMinSec(seconds: time)
        timerLabel.text = makeTimeString(hours: format.0, minutes: format.1, seconds: format.2)
    }
    func secToHourMinSec(seconds: Int) -> (Int, Int, Int)
    {
        return ((seconds / 3600), ((seconds % 3600) / 60),((seconds % 3600) % 60))
    }
    func makeTimeString(hours: Int, minutes: Int, seconds : Int) -> String
    {
        var timeString = ""
        timeString += String(format: "0%2d", hours)
        timeString += " : "
        timeString += String(format: "0%2d", minutes)
        timeString += " : "
        timeString += String(format: "0%2d", seconds)
        return timeString
    }
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.backgroundColor = .white
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        view.backgroundColor = .systemGray
//        view.addSubview(imageView)
//        imageView.frame = CGRect(x: 0, y: 0, width: 300, height:300)
//        imageView.center = view.center
//        startButton.layer.cornerRadius = 50
//        endButton.isHidden = true
        // Do any additional setup after loading the view.
    }
}

