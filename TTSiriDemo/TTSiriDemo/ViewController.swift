//
//  ViewController.swift
//  TTSiriDemo
//
//  Created by zhang liangwang on 16/7/15.
//  Copyright © 2016年 zhangliangwang. All rights reserved.
//

import UIKit
import Intents

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor.lightGray()
        
//        let testLabel = UILabel.init(frame: CGRect(x: 50,y: 100,width: 120,height: 24))
//        testLabel.text = "first xcode 8 , hello world"
//        testLabel.textColor = UIColor.red()
//        testLabel.textAlignment = .center
//        testLabel.backgroundColor = UIColor.lightGray()
//        self.view.addSubview(testLabel)
        
        //请求Siri权限
        INPreferences.requestSiriAuthorization { (status) in
            switch status {
            case .authorized:
                print("user have author")
            case .notDetermined:
                print("user not determined")
            case .restricted:
                print("user restricted")
            case .denied:
                print("user deny author")
            default:
                print("default")
                
            }
        }
        
        
        
        let testBtn = UIButton.init(frame: CGRect.init(x: 50, y: 150, width: 200, height: 44))
        testBtn.setTitle("Enter Weight", for: .normal)
        testBtn.setTitleColor(UIColor.red(), for: .normal)
        testBtn.backgroundColor = UIColor.orange()
        testBtn.addTarget(self, action: #selector(ViewController.clickNext), for: .touchUpInside)
        self.view.addSubview(testBtn)
        
        
    }
    
    func clickNext() {
        
        let meaVC = TTMeasureWeightViewController()
        self.navigationController?.pushViewController(meaVC, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }


}





























































