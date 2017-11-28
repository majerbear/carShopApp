//
//  EngineViewController.swift
//  carShopApp
//
//  Created by Majerus, Hunter C on 11/28/17.
//  Copyright © 2017 Majerus, Hunter C. All rights reserved.
//
import UIKit

class SuspensionViewController: UIViewController
{
    var suspensionLabel: UILabel
    var exit: UILabel
    var submit: UILabel
    init(string: String)
    {
        suspensionLabel = UILabel()
        exit = UILabel()
        submit = UILabel()
        
        super.init(nibName: nil, bundle: nil)
        
        let this = suspensionLabel
        this.frame = CGRect(x: 50 , y: UIScreen.main.bounds.size.height/2, width: 300, height: 150)
        this.numberOfLines = 5
        this.text = "Sway Bar Service" + "\n" + "Tie Rod Repair" + "\n" + "Control Arm Service" + "\n" + "Shock Replacement" + "\n" + "Ball Joint Replacement"
        self.view.addSubview(this)
        
        exit.frame = CGRect(x: 50 , y: UIScreen.main.bounds.size.height/2+200, width: 200, height: 50)
        exit.text = "Return To Main Page"
        exit.isUserInteractionEnabled = true
        exit.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(ViewController.suspensionTap(_:))))
        self.view.addSubview(exit)
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    @objc func suspensionTap(_ recognizer: UITapGestureRecognizer) {
        self.presentingViewController?.dismiss(animated: true, completion: { () -> Void in
            NSLog("This is dismissed...")
        })
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


