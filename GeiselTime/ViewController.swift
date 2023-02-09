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



    @IBAction func startButtonPressed(_ sender: Any) {
//        startButton.isHidden = true
//        endButton.isHidden = false

        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.updateTimer), userInfo: nil, repeats: true)
    }

    @IBAction func endButtonPressed(_ sender: Any) {
        timer.invalidate()

//        startButton.isHidden = false
//        endButton.isHidden = true
    }

    @objc func updateTimer() {
        time += 1
        timerLabel.text = String(time)
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

