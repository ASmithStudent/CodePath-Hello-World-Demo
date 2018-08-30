//
//  ViewController.swift
//  MadDemo
//
//  Created by Adrian Smith on 8/29/18.
//  Copyright © 2018 Adrian Smith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    var backgroundColor: UIColor!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        backgroundColor = view.backgroundColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func randomColorGenerator() -> UIColor{
        let randomRed: CGFloat = CGFloat(drand48())
        let randomGreen: CGFloat = CGFloat(drand48())
        let randomBlue: CGFloat = CGFloat(drand48())
        
        return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1)
    }


    @IBAction func didTapButton(_ sender: Any) {
        
        print("Hello")
        let randomColor: UIColor = randomColorGenerator()
        textLabel.textColor = randomColor
        
    }
    
    @IBAction func didTapViewButton(_ sender: Any) {
        view.backgroundColor = randomColorGenerator()
    }
    
    @IBAction func didTapTextButton(_ sender: Any) {
        //textLabel.text = "Goodbye"
        textLabel.text = textField.text
        textField.text = ""
        
        view.endEditing(true)
    }
    
    @IBAction func onResetGesture(_ sender: Any) {
        textLabel.text = "Hello"
        view.backgroundColor = backgroundColor
    }
    
    
}

