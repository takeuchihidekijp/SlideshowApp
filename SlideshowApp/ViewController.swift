//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 竹内秀樹 on 2017/09/30.
//  Copyright © 2017年 hideki.takeuchi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBAction func onTapImage(_ sender: Any) {
        performSegue(withIdentifier: "scope", sender: <#T##Any?#>)
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue){
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let image = UIImage(named: "sports_polo")
        
        imageView.image = image
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

