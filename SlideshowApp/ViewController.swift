//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 竹内秀樹 on 2017/09/30.
//  Copyright © 2017年 hideki.takeuchi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //進むボタン
    @IBOutlet weak var go_btn: UIButton!
    
    var timer: Timer!
    var ImageNo = 0
    

    @IBOutlet weak var backbtn: UIButton!
    @IBOutlet weak var slide: UIButton!
    @IBAction func startShow(_ sender: Any) {
        
        // 表示している画像の番号を1増やす
        ImageNo += 1
        
        displayImage()
        
    }
    @IBAction func backShow(_ sender: Any) {
        
        ImageNo -= 1
        
        displayImage()
        
    }
    @IBAction func slideShow(_ sender: Any) {
        
        if self.timer == nil {
           self.timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
            
            go_btn.isEnabled = false
            backbtn.isEnabled = false

            
            slide.setTitle("停止", for: .normal)
            
        }else{
            self.timer.invalidate()
            self.timer = nil
            
            go_btn.isEnabled = true
            backbtn.isEnabled = true
            
            slide.setTitle("再生", for: .normal)

        }
        
    }
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func onTapImage(_ sender: Any) {
        performSegue(withIdentifier: "scope", sender: nil)
    }
    
    // Segue 準備
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        // segueから遷移先のResultViewControllerを取得する
        let scopeViewController:ScopeViewController = segue.destination as! ScopeViewController
        
        scopeViewController.No = ImageNo
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

    func updateTimer(timer: Timer) {
        
        // 表示している画像の番号を1増やす
        ImageNo += 1
        
        displayImage()
    }
    
    func  displayImage() {
        let images = ["syageki_shooting_beam_rifle","sports_polo","syageki_shooting_clay"]
        
        // 画像の番号が正常な範囲を指しているかチェック
        
        // 範囲より下を指している場合、最後の画像を表示
        if ImageNo < 0 {
            ImageNo = 2
        }
        
        // 範囲より上を指している場合、最初の画像を表示
        if ImageNo > 2 {
            ImageNo = 0
        }
        
        // 表示している画像の番号から名前を取り出し
        let name = images[ImageNo]
        
        // 画像を読み込み
        let image = UIImage(named: name)
        
        // Image Viewに読み込んだ画像をセット
        imageView.image = image
        
    }

}

