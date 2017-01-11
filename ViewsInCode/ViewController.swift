//
//  ViewController.swift
//  ViewsInCode
//
//  Created by Piotr Piotrowski on 10/01/2017.
//  Copyright © 2017 Piotr Piotrowski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var redView:UIView!
    var helloWorldLabel:UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("View Will Appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("View Did Appear")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.backgroundColor = UIColor.yellow
       
        redView = UIView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height / 2))
        redView.backgroundColor = UIColor.red
        view.addSubview(redView)
        
        helloWorldLabel = UILabel(frame: CGRect(x: 20, y: view.bounds.height / 2 + 20, width: 20, height: 20))
        helloWorldLabel.backgroundColor = UIColor.orange
        view.addSubview(helloWorldLabel)
        helloWorldLabel.text = "Hello World"
        helloWorldLabel.font = helloWorldLabel.font.withSize(40)
        helloWorldLabel.sizeToFit()
        
        print("View Did Load")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

