//
//  ViewController.swift
//  Test_10-26
//
//  Created by Andy Arilrve on 2020/11/3.
//

import UIKit

class ViewController: UIViewController {
    
            @IBAction func btn(_ sender: Any) {
                let url2 = "http://127.0.0.1/test.json"
                let url = NSURL(string: url2)
                if let data = try? Data(contentsOf: url! as URL){
                    do {
                        let parseDate = try JSONSerialization.jsonObject(with: data as Data, options:
                            .allowFragments)
                        
                        let dict = parseDate as! NSDictionary
                        
                        if let user = dict["a"] ?? 0{
                            
                            print("user: \(user)")
                        }
                    } catch  {
                        print(error.localizedDescription)
                    }
                }
            }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

