//
//  TTChartViewController.swift
//  TTSiriDemo
//
//  Created by zhang liangwang on 16/7/19.
//  Copyright © 2016年 zhangliangwang. All rights reserved.
//

import UIKit

class TTChartViewController: UIViewController {

    
    
    private var testLabel: UILabel!
    private var noDataView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
    }
    
    
    func show() {
        
        self.testLabel = UILabel(frame: CGRect(x: 20, y: 0, width: self.view.frame.size.width-40, height: 200))
        self.testLabel.center = CGPoint.init(x: self.view.frame.size.width / 1, y: (self.view.frame.size.height - 200) / 2)
        self.testLabel.text = "Start Use Siri"
        self.testLabel.textColor = UIColor.black()
        self.testLabel.backgroundColor = UIColor.lightGray()
        self.view.addSubview(self.testLabel)
    }
    
    func showNoDataView() {
        
        self.noDataView = UILabel(frame: CGRect(x: 20, y: 0, width: self.view.frame.size.width-40, height: 200))
        self.noDataView.center = CGPoint.init(x: self.view.frame.size.width / 1, y: (self.view.frame.size.height - 200) / 2)
        self.noDataView.backgroundColor = UIColor.orange()
        self.view.addSubview(self.noDataView)
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
