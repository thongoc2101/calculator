//
//  ViewController.swift
//  calculator
//
//  Created by Phan Thi Ngoc Cam on 4/17/17.
//  Copyright © 2017 ngoccam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var ketqua: UILabel!
    
    
    var result = Float()
    var a = Float()
    var c = 100
    
    var b = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        b = "="
        ketqua.text = ("\(result)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnNumber(_ sender: UIButton) {
        a = a * 10 + Float(Int(sender.titleLabel!.text!)!)
        ketqua.text = ("\(a)")
        
    }

    @IBAction func btnHoatdong(_ sender: UIButton) {
        switch b
        {
            case "=":
            result = a
        case "-":
            result = result - a
        case "+":
            result = result + a
        case "*":
            result = a * result
        case "/":
            result = result / a
        case "%":
            result = result / 100.0
        default:
            print("Loi roi!!!")
        }
        a = 0
        ketqua.text = ("\(result)")
        if(sender.titleLabel!.text! == "=")
        {
            result = 0
        }
        b = sender.titleLabel!.text! as String!
        
    }
    @IBAction func btnXoa(_ sender: UIButton) {
        result = 0
        a = 0
        b = "="
        ketqua.text = ("\(result)")
    }
}

