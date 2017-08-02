//
//  ViewController.swift
//  GameOfFuture(without AI.api)
//
//  Created by Vince Lee on 2017/8/2.
//  Copyright © 2017年 Vince Lee. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textView: UITextView!
    
    
    let synth = AVSpeechSynthesizer()
    var myUtterance = AVSpeechUtterance(string: "")

    
    @IBAction func SendButton(_ sender: Any) {
        var youSay = "\(textField.text)"
        let oldTextView = textView.text
        
        
        if youSay.contains("wealthy") ||
           youSay.contains("money") {
            textView.text = "Through little struggles in life you would become a person with all the things you have been dreaming of."
        }
            
        else if youSay.contains("famous") ||
           youSay.contains("celebrity") {
            textView.text = "You need to be serous about this. Your work matters millions of people."
        }
        else if youSay.contains("love") ||
           youSay.contains("married") ||
           youSay.contains("boyfriend") ||
           youSay.contains("girlfriend"){
            textView.text = "Hold on, just try to love the people next to you ok?"
        }
        else {
            textView.text = "I'm You from the future but I can not understand you. Try another question."
        }
        
        myUtterance = AVSpeechUtterance(string: textView.text)
        myUtterance.rate = 0.5
        
        if oldTextView != textView.text {
        synth.speak(myUtterance)
        }
        
}

}
