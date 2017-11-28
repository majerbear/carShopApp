//
//  ViewController.swift
//  carShopApp
//
//  Created by Majerus, Hunter C on 11/6/17.
//  Copyright © 2017 Majerus, Hunter C. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    private let engine: UILabel
    private let drivetrain: UILabel
    private let suspension: UILabel
    private let lighting: UIImageView
    private let generalwork: UILabel
    private let myView: UIView
    
    init()
    {
        engine = UILabel()
        drivetrain = UILabel()
        suspension = UILabel()
        lighting = UIImageView()
        generalwork = UILabel()
        myView = UIView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height))
        
        super.init(nibName: nil, bundle: nil)
        self.view = UIView(frame: UIScreen.main.bounds)
        myView.clipsToBounds = true
        myView.backgroundColor = UIColor.white
        self.view.addSubview(myView)
        
        let one = engine
        one.frame = CGRect(x: UIScreen.main.bounds.size.width/2-100 , y: UIScreen.main.bounds.size.height/2-300, width: 150, height: 50)
        one.text = "Engine"
        one.isUserInteractionEnabled = true
        one.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(ViewController.engineTap(_:))))
        self.myView.addSubview(one)
        
        let two = drivetrain
        two.frame = CGRect(x: UIScreen.main.bounds.size.width/2, y:UIScreen.main.bounds.size.height/2-75, width: 150, height: 50)
        two.text = "Drivetrain"
        two.isUserInteractionEnabled = true
        two.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(ViewController.driveTap(_:))))
        self.myView.addSubview(two)
        
        let three = suspension
        three.frame = CGRect(x: UIScreen.main.bounds.size.width/2, y: UIScreen.main.bounds.size.height/2-50, width: 150, height: 50)
        three.text = "Suspension"
        three.isUserInteractionEnabled = true
        three.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(ViewController.suspensionTap(_:))))
        self.myView.addSubview(three)
        
        let four = lighting
        four.frame = CGRect(x:UIScreen.main.bounds.size.width/2, y: UIScreen.main.bounds.size.height/2+50, width: 50, height: 50)
        four.image = UIImage(named: "halo.jpg")
        four.isUserInteractionEnabled = true
        four.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(ViewController.lightTap(_:))))
        self.myView.addSubview(four)
        
        let five = generalwork
        five.frame = CGRect(x:UIScreen.main.bounds.size.width/2, y: UIScreen.main.bounds.size.height/2-25, width: 150, height: 50)
        five.text = "General work"
        five.isUserInteractionEnabled = true
        five.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(ViewController.generalTap(_:))))
        self.myView.addSubview(five)
        
    }
    
    required init?(coder aDecoder: NSCoder)
    {
        fatalError("init(coder:) has not been implemented")
    }
    @objc func engineTap(_ recognizer: UITapGestureRecognizer)
    {
        let engineView: EngineViewController = EngineViewController(string: "Engine View Controller")
        engineView.view.backgroundColor = UIColor.white
        self.present(engineView, animated: true) { () -> Void in
            NSLog("Here it is ")}
    }
    @objc func driveTap(_ recognizer: UITapGestureRecognizer)
    {
        let drivetrainView: DriveViewController = DriveViewController(string: "Drive View Controller")
        drivetrainView.view.backgroundColor = UIColor.white
        self.present(drivetrainView, animated: true) { () -> Void in
            NSLog("Here it is ")}
    }
    @objc func suspensionTap(_ recognizer: UITapGestureRecognizer)
    {
        let susView: SuspensionViewController = SuspensionViewController(string: "Suspension View Controller")
        susView.view.backgroundColor = UIColor.white
        self.present(susView, animated: true) { () -> Void in
            NSLog("Here it is ")}
    }
    @objc func lightTap(_ recognizer: UITapGestureRecognizer)
    {
        let lightView: LightViewController = LightViewController(string: "Lighting View Controller")
        lightView.view.backgroundColor = UIColor.white
        self.present(lightView, animated: true) { () -> Void in
            NSLog("Here it is ")}
    }
    @objc func generalTap(_ recognizer: UITapGestureRecognizer)
    {
        let generalView: GeneralViewController = GeneralViewController(string: "General Work View Controller")
        generalView.view.backgroundColor = UIColor.white
        self.present(generalView, animated: true) { () -> Void in
            NSLog("Here it is ")}
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    // x code is beautiful
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

