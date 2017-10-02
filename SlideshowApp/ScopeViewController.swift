//
//  ScopeViewController.swift
//  SlideshowApp
//
//  Created by 竹内秀樹 on 2017/09/30.
//  Copyright © 2017年 hideki.takeuchi. All rights reserved.
//

import UIKit

class ScopeViewController: UIViewController {
    
    // 受け取るためのプロパティ（変数）を宣言しておく
    var No:Int = 0

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let images = ["syageki_shooting_beam_rifle","sports_polo","syageki_shooting_clay"]
        
        let name = images[No]
        
        // 画像を読み込み
        let image = UIImage(named: name)
        
        // Image Viewに読み込んだ画像をセット
       imageView.image = image
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }@IBAction func unwind
    */

}
